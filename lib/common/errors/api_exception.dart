import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_exception.freezed.dart';

@freezed
class ApiException with _$ApiException implements Exception {
  // for status code 400,500
  const factory ApiException.serverException({
    required String message,
  }) = _ServerException;

  //if status code is 422
  const factory ApiException.unprocessableEntity({
    required String message,
    required Map<String, dynamic> errors,
  }) = _UnprocessableEntity;

  // for status code 401
  const factory ApiException.unAuthorized(String message) = _UnAuthorized;

  // for socket exception from server
  const factory ApiException.network() = _Network;

  // for connection time out
  const factory ApiException.connectionTimeOut() = _ConnectionTimeOut;

  // for error from client
  const factory ApiException.badCertificate() = _BadCertificate;

  // for error from client
  const factory ApiException.badResponse() = _BadResponse;

  // for error from client
  const factory ApiException.database({
    required String message,
  }) = _Database;
}
