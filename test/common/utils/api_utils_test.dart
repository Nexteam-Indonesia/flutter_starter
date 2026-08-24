import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:next_starter/common/utils/api_utils.dart';

Response<dynamic> responseWith(Object? data, {int? statusCode = 200}) => Response<dynamic>(
      requestOptions: RequestOptions(path: '/'),
      statusCode: statusCode,
      data: data,
    );

void main() {
  group('ApiUtils.parseResponseData', () {
    test('reads payload.data from a decoded map body', () {
      final response = responseWith({
        'payload': {'data': 42},
      });

      expect(ApiUtils.parseResponseData(response), 42);
    });

    test('reads payload.data from a raw JSON string body', () {
      final response = responseWith('{"payload":{"data":42}}');

      expect(ApiUtils.parseResponseData(response), 42);
    });

    test('falls back to the message when payload is absent', () {
      final response = responseWith({'message': 'kosong'});

      expect(ApiUtils.parseResponseData(response), 'kosong');
    });
  });

  group('ApiUtils.parseResponsePaginate', () {
    test('returns the whole payload object', () {
      final response = responseWith({
        'payload': {
          'data': [1, 2],
          'total': 2,
        },
      });

      expect(ApiUtils.parseResponsePaginate(response), {
        'data': [1, 2],
        'total': 2,
      });
    });

    test('falls back to the message when payload is absent', () {
      final response = responseWith({'message': 'kosong'});

      expect(ApiUtils.parseResponsePaginate(response), 'kosong');
    });
  });

  group('ApiUtils.parseResponseMessage', () {
    test('reads the message from a map body', () {
      expect(ApiUtils.parseResponseMessage(responseWith({'message': 'halo'})), 'halo');
    });

    test('reads the message from a raw JSON string body', () {
      expect(ApiUtils.parseResponseMessage(responseWith('{"message":"halo"}')), 'halo');
    });

    test('uses a default when the body carries no message', () {
      expect(
        ApiUtils.parseResponseMessage(responseWith({'other': 1})),
        'Terjadi Error pada server',
      );
    });

    test('does not throw on a non-JSON-object body', () {
      expect(ApiUtils.parseResponseMessage(responseWith(null)), 'Terjadi Error pada server');
    });
  });

  group('ApiUtils.validationMessageError', () {
    test('translates invalid credentials on 403', () {
      expect(
        ApiUtils.validationMessageError('Invalid credentials', 403),
        'Email atau Password salah',
      );
    });

    test('reports an unreachable server for code -1 and null', () {
      expect(ApiUtils.validationMessageError('x', -1), 'Tidak dapat terhubung ke server');
      expect(ApiUtils.validationMessageError('x', null), 'Tidak dapat terhubung ke server');
    });

    test('passes other messages through unchanged', () {
      expect(ApiUtils.validationMessageError('apa adanya', 500), 'apa adanya');
    });
  });
}
