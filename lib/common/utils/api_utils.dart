import 'dart:convert';

import 'package:dio/dio.dart';

class ApiUtils {
  static Object? parseResponseData(Response<dynamic> response) {
    final payload = _payloadOf(response);
    if (payload == null) {
      return parseResponseMessage(response);
    }
    return payload['data'];
  }

  static Object? parseResponsePaginate(Response<dynamic> response) {
    final payload = _payloadOf(response);
    if (payload == null) {
      return parseResponseMessage(response);
    }
    return payload;
  }

  static String parseResponseMessage(Response<dynamic> response) {
    final body = _bodyOf(response);
    final message = body?['message'];
    return validationMessageError(
      message is String ? message : 'Terjadi Error pada server',
      response.statusCode,
    );
  }

  /// The response body as a map, decoding it first when the server replied with
  /// a raw JSON string. Returns `null` when the body is not a JSON object.
  static Map<String, Object?>? _bodyOf(Response<dynamic> response) {
    final data = response.data;
    final decoded = data is String ? jsonDecode(data) : data;
    return decoded is Map ? decoded.cast<String, Object?>() : null;
  }

  /// The `payload` object of the response body, or `null` when absent.
  static Map<String, Object?>? _payloadOf(Response<dynamic> response) {
    final payload = _bodyOf(response)?['payload'];
    return payload is Map ? payload.cast<String, Object?>() : null;
  }

  static String validationMessageError(String message, int? code) {
    if (code == 403) {
      if (message == 'Invalid credentials') {
        return 'Email atau Password salah';
      }
    } else if (code == -1 || code == null) {
      return 'Tidak dapat terhubung ke server';
    }
    return message;
  }

  static String errorMessage(String msg) {
    if (msg.contains('longer')) {
      msg = 'Tidak dapat menghubungkan ke server, periksa koneksi internet anda';
    } else if (msg.toLowerCase().contains('no route to host')) {
      msg = 'Terjadi kesalahan pada server, silahkan coba beberapa saat lagi';
    } else if (msg.toLowerCase().contains('connection errored')) {
      msg = 'Tidak dapat menghubungkan ke server, periksa koneksi internet anda';
    }
    return msg;
  }
}
