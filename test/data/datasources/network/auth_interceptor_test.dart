import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:next_starter/common/base/base_dio_remote_source.dart';
import 'package:next_starter/common/errors/api_exception.dart';
import 'package:next_starter/data/datasources/network/auth_interceptor.dart';
import 'package:next_starter/data/datasources/session/session_source.dart';

import '../../../helpers/fakes.dart';

void main() {
  late FakeStorage storage;
  late FakeAdapter adapter;
  late BaseDioRemoteSource source;

  setUp(() {
    storage = FakeStorage({'token': 'abc'});
    adapter = FakeAdapter();
    final dio = Dio(BaseOptions(baseUrl: 'https://api.test/'))
      ..httpClientAdapter = adapter
      ..interceptors.add(AuthInterceptor(SessionSource(shared: storage)));
    source = BaseDioRemoteSource(dio);
  });

  Future<Object?> send({Options? options}) => source.networkRequest(
        request: (dio) => dio.get<dynamic>('items', options: options),
        onResponse: (data) => data,
        isResponseAll: true,
      );

  test('attaches the stored token as a bearer header', () async {
    await send();

    expect(adapter.requests.single.headers['Authorization'], 'Bearer abc');
  });

  test('sends no token when the request opts out', () async {
    await send(options: Options(extra: {AuthInterceptor.skipAuth: true}));

    expect(adapter.requests.single.headers.containsKey('Authorization'), isFalse);
  });

  test('sends no token when there is no session', () async {
    await storage.reset();

    await send();

    expect(adapter.requests.single.headers.containsKey('Authorization'), isFalse);
  });

  test('clears the token and throws unauthorized on a 401', () async {
    adapter
      ..statusCode = 401
      ..body = {'message': 'expired'};

    await expectLater(send(), throwsA(const ApiException.unAuthorized('expired')));
    expect(await storage.hasData('token'), isFalse);
  });

  test('surfaces a 422 as unprocessable entity with its field errors', () async {
    adapter
      ..statusCode = 422
      ..body = {
        'message': 'invalid',
        'payload': {'name': 'wajib diisi'},
      };

    await expectLater(
      send(),
      throwsA(
        const ApiException.unprocessableEntity(
          message: 'invalid',
          errors: {'name': 'wajib diisi'},
        ),
      ),
    );
    expect(await storage.hasData('token'), isTrue);
  });

  test('turns a response that fails to parse into a bad response', () async {
    final result = source.networkRequest<int>(
      request: (dio) => dio.get<dynamic>('items'),
      onResponse: (data) => (data! as Map<String, Object?>)['missing']! as int,
      isResponseAll: true,
    );

    await expectLater(result, throwsA(isA<ApiBadResponse>()));
  });
}
