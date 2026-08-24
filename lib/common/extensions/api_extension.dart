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
      case DioExceptionType.connectionError:
        final code = response?.statusCode!;
        if (code == 422) {
          return ApiException.unprocessableEntity(
            message: response != null
                ? ApiUtils.parseResponseMessage(response!)
                : message ?? 'Error tidak diketahui',
            errors: _payloadErrors(response),
          );
        } else if (code == 401) {
          return ApiException.unAuthorized(
            response != null ? ApiUtils.parseResponseMessage(response!) : 'Unauthorized',
          );
        } else if (code == 400) {
          return ApiException.serverException(
            message: response != null
                ? ApiUtils.parseResponseMessage(response!)
                : 'Error tidak diketahui',
          );
        } else {
          return ApiException.serverException(
            message: response != null
                ? ApiUtils.parseResponseMessage(response!)
                : message ?? 'Error tidak diketahui',
          );
        }
      case DioExceptionType.connectionTimeout:
        return const ApiException.connectionTimeOut();
      case DioExceptionType.sendTimeout:
        return const ApiException.connectionTimeOut();
      case DioExceptionType.receiveTimeout:
        return const ApiException.connectionTimeOut();
      case DioExceptionType.transformTimeout:
        return const ApiException.connectionTimeOut();
      case DioExceptionType.cancel:
        return const ApiException.network();
      case DioExceptionType.badCertificate:
        return const ApiException.badCertificate();
      case DioExceptionType.badResponse:
        return ApiException.badResponse(
          response != null ? ApiUtils.parseResponseMessage(response!) : 'Response tidak valid',
        );
      case DioExceptionType.unknown:
        if (response == null) {
          return const ApiException.serverException(
            message: "Tidak ada respon dari server",
          );
        }
        if (error is SocketException) {
          return const ApiException.network();
        } else {
          return ApiException.serverException(
            message: response != null
                ? ApiUtils.parseResponseMessage(response!)
                : message ?? 'Error tidak diketahui',
          );
        }
    }
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
