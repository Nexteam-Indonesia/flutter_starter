import 'dart:convert';

import 'package:dio/dio.dart';

class ApiUtils {
  static dynamic parseResponseData(Response<dynamic> response) {
    if (response.data is String) {
      return jsonDecode(response.data)['payload']['data'];
    }
    if (response.data['payload'] == null) {
      return parseResponseMessage(response);
    }
    return response.data['payload']['data'];
  }

  static dynamic parseResponsePaginate(Response<dynamic> response) {
    if (response.data is String) {
      return jsonDecode(response.data)['payload'];
    }
    if (response.data['payload'] == null) {
      return parseResponseMessage(response);
    }
    return response.data['payload'];
  }

  static String parseResponseMessage(Response<dynamic> response) {
    if (response.data is String) {
      return validationMessageError(jsonDecode(response.data)['message'], response.statusCode);
    }
    return validationMessageError(
        response.data['message'] ?? 'Terjadi Error pada server', response.statusCode);
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
