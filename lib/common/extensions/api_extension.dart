import 'dart:io';

import 'package:dio/dio.dart';

import '../errors/api_exception.dart';
import '../utils/api_utils.dart';

// TODO: tergantung jenis apinya bisa dari data/message untuk mengambil pesan errornya
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
            errors: response?.data['payload'] ?? {},
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
      case DioExceptionType.cancel:
        return const ApiException.network();
      case DioExceptionType.badCertificate:
        return const ApiException.badCertificate();
      case DioExceptionType.badResponse:
        return const ApiException.badResponse();
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
      default:
        return ApiException.serverException(
          message: response != null
              ? ApiUtils.parseResponseMessage(response!)
              : message ?? 'Error tidak diketahui',
        );
    }
  }
}
