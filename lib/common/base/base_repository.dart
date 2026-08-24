import 'package:connectivity_plus/connectivity_plus.dart';

import '../errors/api_exception.dart';
import '../errors/app_error.dart';
import '../extensions/api_extension.dart';
import '../network/network_info.dart';
import '../typedefs/typedefs.dart';

/// {@template base_repository}
/// A [BaseRepository] class for handling network status and exceptions
/// {@endtemplate}
class BaseRepository {
  BaseRepository(this._networkInfo);

  final NetworkInfo _networkInfo;

  /// Runs [call] when the device is online and wraps the outcome in a [Result].
  ///
  /// [R] is the response type from the server, [T] the value the caller wants.
  /// [onSuccess] maps the former to the latter. When offline, [getOnLocal] is
  /// returned if supplied, otherwise the call fails with `AppError.noInternet`.
  FutureResult<T> handleNetworkCall<R, T>({
    required Future<R> call,
    required T Function(R data) onSuccess,
    Future<void> Function(R data)? onSaveToLocal,
    T? getOnLocal,
  }) async {
    final isOffline = (await _networkInfo.getStatus()).first == ConnectivityResult.none;
    if (isOffline) {
      if (getOnLocal != null) {
        return Success<T>(getOnLocal);
      }
      return Failure<T>(const AppError.noInternet());
    }

    try {
      final data = await call;
      if (onSaveToLocal != null) {
        await onSaveToLocal(data);
      }
      return Success<T>(onSuccess(data));
    } on ApiException catch (e) {
      return Failure<T>(e.toAppError);
    }
  }
}
