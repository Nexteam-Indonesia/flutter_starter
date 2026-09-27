import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:next_starter/common/errors/api_exception.dart';
import 'package:next_starter/common/extensions/api_extension.dart';

DioException _badResponse(int statusCode, Object? body) {
  final options = RequestOptions(path: '/x');
  return DioException(
    requestOptions: options,
    type: DioExceptionType.badResponse,
    response: Response<dynamic>(requestOptions: options, statusCode: statusCode, data: body),
  );
}

void main() {
  group('ApiExceptionDioX.toApiException', () {
    test('maps a 422 bad response to unprocessable entity with payload errors', () {
      final e = _badResponse(422, {
        'message': 'invalid',
        'payload': {'email': 'sudah dipakai'},
      });

      expect(
        e.toApiException,
        const ApiException.unprocessableEntity(
          message: 'invalid',
          errors: {'email': 'sudah dipakai'},
        ),
      );
    });

    test('maps a 401 bad response to unauthorized', () {
      expect(
        _badResponse(401, {'message': 'expired'}).toApiException,
        const ApiException.unAuthorized('expired'),
      );
    });

    test('maps any other bad response to a server exception carrying its message', () {
      expect(
        _badResponse(500, {'message': 'boom'}).toApiException,
        const ApiException.serverException(message: 'boom'),
      );
    });

    test('maps a connection error to network', () {
      final e = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.connectionError,
      );

      expect(e.toApiException, const ApiException.network());
    });

    test('maps an unknown socket failure to network', () {
      final e = DioException(
        requestOptions: RequestOptions(),
        error: const SocketException('unreachable'),
      );

      expect(e.toApiException, const ApiException.network());
    });

    test('maps every timeout kind to a timeout', () {
      for (final type in [
        DioExceptionType.connectionTimeout,
        DioExceptionType.sendTimeout,
        DioExceptionType.receiveTimeout,
      ]) {
        final e = DioException(requestOptions: RequestOptions(), type: type);
        expect(e.toApiException, const ApiException.connectionTimeOut(), reason: '$type');
      }
    });
  });
}
