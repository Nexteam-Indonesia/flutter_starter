import 'dart:io';

import 'package:dio/dio.dart';

import '../errors/api_exception.dart';
import '../errors/app_error.dart';
import '../utils/api_utils.dart';

// TODO: tergantung jenis apinya bisa dari data/message untuk mengambil pesan errornya
/// The `payload` map of an error body, or an empty map when absent/malformed.
Map<String, dynamic> _payloadErrors(Response<dynamic>? response) {
  final data = response?.data;
  final payload = data is Map ? data['payload'] : null;
  return payload is Map ? payload.cast<String, dynamic>() : <String, dynamic>{};
}

extension ApiExceptionDioX on DioException {
  ApiException get toApiException {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
        return const ApiException.connectionTimeOut();
      case DioExceptionType.cancel:
        return const ApiException.network();
      case DioExceptionType.badCertificate:
        return const ApiException.badCertificate();
      // The server answered, but with a status outside `validateStatus` (non-2xx).
      case DioExceptionType.badResponse:
        return response != null
            ? _fromErrorResponse(response!)
            : const ApiException.badResponse('Response tidak valid');
      // DNS lookup, refused connection, dropped socket: no response exists.
      case DioExceptionType.connectionError:
        return const ApiException.network();
      case DioExceptionType.unknown:
        if (error is SocketException) {
          return const ApiException.network();
        }
        if (response != null) {
          return _fromErrorResponse(response!);
        }
        return ApiException.serverException(
          message: message ?? 'Tidak ada respon dari server',
        );
    }
  }

  static ApiException _fromErrorResponse(Response<dynamic> response) {
    final message = ApiUtils.parseResponseMessage(response);
    return switch (response.statusCode) {
      422 => ApiException.unprocessableEntity(
          message: message,
          errors: _payloadErrors(response),
        ),
      401 => ApiException.unAuthorized(message),
      _ => ApiException.serverException(message: message),
    };
  }
}

/// Translates a transport-layer [ApiException] into an application-layer
/// [AppError].
///
/// The `switch` is exhaustive over the sealed [ApiException], so adding a new
/// variant becomes a compile error here rather than a silent fallthrough.
extension ApiExceptionX on ApiException {
  AppError get toAppError => switch (this) {
        ApiServerException(:final message) => AppError.serverError(message: message),
        ApiUnprocessableEntity(:final message, :final errors) =>
          AppError.validationError(message: message, errors: errors),
        ApiUnAuthorized(:final message) => AppError.unAuthorized(message: message),
        ApiNetworkException() => const AppError.noInternet(),
        ApiDatabaseException(:final message) => AppError.serverError(message: message, code: 200),
        ApiTimeOutException() => const AppError.timeOut(),
        ApiBadCertificate() => const AppError.badCertificate(),
        ApiBadResponse(:final message) => AppError.badResponse(message: message),
      };
}
