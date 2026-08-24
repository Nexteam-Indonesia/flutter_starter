import 'package:flutter_test/flutter_test.dart';
import 'package:next_starter/common/errors/api_exception.dart';
import 'package:next_starter/common/errors/app_error.dart';
import 'package:next_starter/common/extensions/api_extension.dart';

void main() {
  group('ApiExceptionX.toAppError', () {
    test('maps a server exception to a server error', () {
      expect(
        const ApiException.serverException(message: 'down').toAppError,
        const AppError.serverError(message: 'down'),
      );
    });

    test('maps 422 to a validation error, carrying the field errors', () {
      const errors = {'email': 'sudah dipakai'};

      expect(
        const ApiException.unprocessableEntity(message: 'invalid', errors: errors).toAppError,
        const AppError.validationError(message: 'invalid', errors: errors),
      );
    });

    test('maps 401 to unauthorized', () {
      expect(
        const ApiException.unAuthorized('nope').toAppError,
        const AppError.unAuthorized(message: 'nope'),
      );
    });

    test('maps a socket failure to no-internet', () {
      expect(const ApiException.network().toAppError, const AppError.noInternet());
    });

    test('maps a database failure to a server error with code 200', () {
      expect(
        const ApiException.database(message: 'disk').toAppError,
        const AppError.serverError(message: 'disk', code: 200),
      );
    });

    test('maps a timeout', () {
      expect(const ApiException.connectionTimeOut().toAppError, const AppError.timeOut());
    });

    test('maps a bad certificate', () {
      expect(const ApiException.badCertificate().toAppError, const AppError.badCertificate());
    });

    test('maps a bad response', () {
      expect(
        const ApiException.badResponse('garbled').toAppError,
        const AppError.badResponse(message: 'garbled'),
      );
    });

    test('every variant produces a non-empty user-facing message', () {
      const all = <ApiException>[
        ApiException.serverException(message: 'a'),
        ApiException.unprocessableEntity(message: 'b', errors: {}),
        ApiException.unAuthorized('c'),
        ApiException.network(),
        ApiException.connectionTimeOut(),
        ApiException.badCertificate(),
        ApiException.badResponse('d'),
        ApiException.database(message: 'e'),
      ];

      for (final e in all) {
        expect(e.toAppError.message, isNotEmpty, reason: '$e produced an empty message');
      }
    });
  });
}
