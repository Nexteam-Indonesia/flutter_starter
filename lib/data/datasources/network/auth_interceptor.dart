import 'package:dio/dio.dart';

import '../session/session_source.dart';

/// Attaches the stored bearer token to each outgoing request and clears it
/// once the server rejects it with a 401.
///
/// Requests are authenticated by default. A public endpoint opts out with
/// `Options(extra: {AuthInterceptor.skipAuth: true})`.
///
/// The header is set on the request's own [RequestOptions], never on the
/// shared `Dio.options`, so concurrent requests cannot leak or drop each
/// other's credentials.
class AuthInterceptor extends Interceptor {
  AuthInterceptor(this._session);

  /// `RequestOptions.extra` key that marks a request as public.
  static const skipAuth = 'skipAuth';

  static const _header = 'Authorization';

  final SessionSource _session;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.extra[skipAuth] != true) {
      final token = await _session.token;
      if (token != null && token.isNotEmpty) {
        options.headers[_header] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    final sentToken = err.requestOptions.headers.containsKey(_header);
    if (err.response?.statusCode == 401 && sentToken) {
      await _session.deleteToken();
    }
    handler.next(err);
  }
}
