import 'package:dio/dio.dart';

import '../errors/api_exception.dart';
import '../extensions/api_extension.dart';
import '../logging/logger.dart';
import '../utils/api_utils.dart';

/// [BaseDioRemoteSource] for handling network requests for dio client
///
/// Authentication is handled by `AuthInterceptor`, not here.
class BaseDioRemoteSource {
  BaseDioRemoteSource(this._dio);

  final Dio _dio;

  /// [T] is return type from network request
  ///
  /// [request] callback returns [Response] and accepts [Dio] instance
  ///
  /// [onResponse] callback returns [T] and accepts [dynamic] data from [Response]
  ///
  /// throws [ApiException]
  Future<T> networkRequest<T>({
    required Future<Response<dynamic>> Function(Dio dio) request,
    required T Function(dynamic data) onResponse,
    bool isPaginate = false,
    bool isMessage = false,
    bool isResponseAll = false,
  }) async {
    // Dio only completes with a 2xx response; every other status arrives as a
    // `DioException` of type `badResponse`.
    final Response<dynamic> response;
    try {
      response = await request(_dio);
    } on DioException catch (e) {
      logger.e(e);
      throw e.toApiException;
    } catch (e, stackTrace) {
      logger.e('Request failed before reaching the server', error: e, stackTrace: stackTrace);
      throw const ApiException.serverException(message: 'UnExpected Error Occurred in dio!!!');
    }

    try {
      if (isResponseAll) {
        return onResponse(response.data);
      }
      if (isMessage) {
        return onResponse(ApiUtils.parseResponseMessage(response));
      }
      return onResponse(
        isPaginate
            ? ApiUtils.parseResponsePaginate(response)
            : ApiUtils.parseResponseData(response),
      );
    } catch (e, stackTrace) {
      logger.e('Response did not match the expected shape', error: e, stackTrace: stackTrace);
      throw const ApiException.badResponse('Format respon tidak sesuai');
    }
  }
}
