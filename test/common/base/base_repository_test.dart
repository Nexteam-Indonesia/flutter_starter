import 'package:flutter_test/flutter_test.dart';
import 'package:next_starter/common/base/base_repository.dart';
import 'package:next_starter/common/errors/api_exception.dart';
import 'package:next_starter/common/errors/app_error.dart';
import 'package:next_starter/common/typedefs/typedefs.dart';

import '../../helpers/fakes.dart';

void main() {
  late FakeNetworkInfo network;
  late BaseRepository repo;

  setUp(() {
    network = FakeNetworkInfo();
    repo = BaseRepository(network);
  });

  test('wraps a successful call', () async {
    final result = await repo.handleNetworkCall<int, String>(
      call: () async => 1,
      onSuccess: (r) => '$r',
    );

    expect(result, const Success('1'));
  });

  test('does not send the request while offline', () async {
    network.online = false;
    var calls = 0;

    final result = await repo.handleNetworkCall<int, int>(
      call: () async => ++calls,
      onSuccess: (r) => r,
    );

    expect(calls, 0);
    expect(result, const Failure<int>(AppError.noInternet()));
  });

  test('returns the local value while offline when one is given', () async {
    network.online = false;

    final result = await repo.handleNetworkCall<int, int>(
      call: () async => 1,
      onSuccess: (r) => r,
      getOnLocal: 42,
    );

    expect(result, const Success(42));
  });

  test('translates an ApiException into its AppError', () async {
    final result = await repo.handleNetworkCall<int, int>(
      call: () async => throw const ApiException.unAuthorized('nope'),
      onSuccess: (r) => r,
    );

    expect(result, const Failure<int>(AppError.unAuthorized(message: 'nope')));
  });

  test('returns a failure instead of throwing when mapping fails', () async {
    final result = await repo.handleNetworkCall<int, int>(
      call: () async => 1,
      onSuccess: (_) => throw const FormatException('bad'),
    );

    expect(result, isA<Failure<int>>());
  });

  test('returns a failure instead of throwing when saving locally fails', () async {
    final result = await repo.handleNetworkCall<int, int>(
      call: () async => 1,
      onSuccess: (r) => r,
      onSaveToLocal: (_) async => throw StateError('disk full'),
    );

    expect(result, isA<Failure<int>>());
  });
}
