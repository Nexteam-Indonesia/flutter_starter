import 'package:dio/dio.dart';

import '../../data/datasources/session/session_source.dart';
import '../errors/api_exception.dart';
import '../extensions/api_extension.dart';
import '../logging/logger.dart';
import '../utils/api_utils.dart';

/// [BaseDioRemoteSource] for handling network requests for dio client
class BaseDioRemoteSource {
  BaseDioRemoteSource(this._dio, this._session);

  final Dio _dio;
  final SessionSource _session;

  /// [T] is return type from network request
  ///
  /// [request] callback returns [Response] and accepts [Dio] instance
  ///
  /// [onResponse] callback returns [T] and accepts [dynamic] data from [Response]
  ///
  /// throws [ApiException]

  Future<T> networkRequest<T>({
    required Future<Response> Function(Dio dio) request,
    required T Function(dynamic data) onResponse,
    bool isAuth = false,
    bool isPaginate = false,
    bool isMessage = false,
    bool isResponseAll = false,
  }) async {
    try {
      if (isAuth) {
        final token = await _session.hasSession;
        // Vx.log('user: $user');
        if (token) {
          _dio.options.headers.addAll({
            "Authorization": "Bearer $token",
          });
        } else {
          _dio.options.headers.remove("Authorization");
        }
      } else {
        _dio.options.headers.remove("Authorization");
      }
      final response = await request(_dio);

      if (response.statusCode == 401) {
        await _session.deleteToken();
      }
      if (response.statusCode! >= 200 || response.statusCode! < 300) {
        final rest = isPaginate
            ? ApiUtils.parseResponsePaginate(response)
            : ApiUtils.parseResponseData(response);
        if (isResponseAll) {
          return onResponse(response.data);
        }
        // if (response.data['status'] == "success") {
        // print('response.data: ${response.data['data']['data']}');
        return isMessage ? onResponse(ApiUtils.parseResponseMessage(response)) : onResponse(rest);
        // } else {
        //   throw ApiException.database(
        //     message: response.data['message'],
        //   );
        // }
      } else {
        logger.e("Success with Error: ${response.statusCode}");
        throw const ApiException.serverException(message: 'UnExpected Error in status code!!!');
      }
    } on DioException catch (e) {
      var err = e.toApiException;
      // TODO: if auto redirect to login page
      // await err.maybeWhen(
      //   orElse: () {},
      //   unAuthorized: (message) async {
      //     logger.d(message);
      //     if (message != "Password atau No HP salah!") {
      //       await _session.deleteToken();
      //       await _session.deleteUserData();
      //       locator<AppRouter>().pushAndPopUntil(const LoginRoute(), predicate: (r) => false);
      //       return;
      //     }
      //   },
      // );
      throw err;
    } catch (e) {
      logger.e(e);
      throw const ApiException.serverException(message: 'UnExpected Error Occurred in dio!!!');
    }
  }
}
