import 'package:dartz/dartz.dart';

import '../errors/api_exception.dart';
import '../errors/app_error.dart';
import '../network/network_info.dart';
import '../typedefs/typedefs.dart';

/// {@template base_repository}
/// A [BaseRepository] class for handling network status and exceptions
/// {@endtemplate}
class BaseRepository {
  BaseRepository(this._networkInfo);

  final NetworkInfo _networkInfo;

  /// [T] is Return type for [EitherResponse]
  ///
  /// [R] is response type from server that is params for [onSuccess] callback
  ///
  /// [onSuccess] callback returns the [T] and accept [R]

  EitherResponse<T> handleNetworkCall<R, T>({
    required Future<R> call,
    required T Function(R data) onSuccess,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        final data = await call;
        return right(onSuccess(data));
      } on ApiException catch (e) {
        return left(e.when(
          serverException: (message) => AppError.serverError(message: message),
          unprocessableEntity: (message, errors) =>
              AppError.validationError(message: message, errors: errors),
          unAuthorized: (message) => AppError.unAuthorized(message: message),
          network: () => const AppError.noInternet(),
          database: (message) =>
              AppError.serverError(message: message, code: 200),
        ));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }
}
