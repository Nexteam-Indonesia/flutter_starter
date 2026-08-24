import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

/// A transport-layer failure raised by the datasource layer.
///
/// The repository layer translates this into an [AppError] before it reaches
/// application code — see `BaseRepository.handleNetworkCall`.
@Freezed(copyWith: false, fromJson: false, toJson: false)
sealed class ApiException with _$ApiException implements Exception {
  /// Status code 400 or 500.
  const factory ApiException.serverException({
    required String message,
  }) = ApiServerException;

  /// Status code 422.
  const factory ApiException.unprocessableEntity({
    required String message,
    required Map<String, dynamic> errors,
  }) = ApiUnprocessableEntity;

  /// Status code 401.
  const factory ApiException.unAuthorized(String message) = ApiUnAuthorized;

  /// A socket failure while reaching the server.
  const factory ApiException.network() = ApiNetworkException;

  /// The request exceeded one of Dio's timeouts.
  const factory ApiException.connectionTimeOut() = ApiTimeOutException;

  /// The server presented an untrusted certificate.
  const factory ApiException.badCertificate() = ApiBadCertificate;

  /// The response body did not match the expected shape.
  const factory ApiException.badResponse(String message) = ApiBadResponse;

  /// A local persistence failure.
  const factory ApiException.database({
    required String message,
  }) = ApiDatabaseException;
}
