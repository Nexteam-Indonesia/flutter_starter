import 'package:flutter_test/flutter_test.dart';
import 'package:next_starter/common/errors/app_error.dart';
import 'package:next_starter/common/typedefs/typedefs.dart';

void main() {
  group('Result', () {
    const error = AppError.serverError(message: 'boom');

    test('Success carries its value', () {
      const result = Result<int>.success(7);

      expect(result, isA<Success<int>>());
      expect(result.isSuccess, isTrue);
      expect(result.isFailure, isFalse);
      expect(result.valueOrNull, 7);
      expect(result.errorOrNull, isNull);
    });

    test('Failure carries its error', () {
      const result = Result<int>.failure(error);

      expect(result, isA<Failure<int>>());
      expect(result.isSuccess, isFalse);
      expect(result.isFailure, isTrue);
      expect(result.valueOrNull, isNull);
      expect(result.errorOrNull, error);
    });

    test('map transforms a success and preserves the type argument', () {
      final mapped = const Result<int>.success(2).map((v) => 'v$v');

      expect(mapped, const Success<String>('v2'));
    });

    test('map leaves a failure untouched', () {
      final mapped = const Result<int>.failure(error).map((v) => 'v$v');

      expect(mapped, const Failure<String>(error));
      expect(mapped.errorOrNull, error);
    });

    test('switch matches exhaustively without a default branch', () {
      String describe(Result<int> r) => switch (r) {
            Success(:final value) => 'ok:$value',
            Failure(:final error) => 'err:${error.message}',
          };

      expect(describe(const Result<int>.success(1)), 'ok:1');
      expect(describe(const Result<int>.failure(error)), 'err:boom');
    });

    test('values compare by content, not identity', () {
      expect(const Success<int>(1), const Success<int>(1));
      expect(const Failure<int>(error), const Failure<int>(error));
      expect(const Success<int>(1), isNot(const Success<int>(2)));
    });
  });
}
