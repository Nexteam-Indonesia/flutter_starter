import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

@Freezed(copyWith: false, fromJson: false, toJson: false)
class AppError with _$AppError {
  const factory AppError.serverError({@Default(400) int code, required String message}) = _ServerError;

  const factory AppError.validationError({
    required String message,
    @Default({}) Map<String, dynamic> errors,
  }) = _ValidationError;

  const factory AppError.noInternet({
    @Default("Anda Tidak terhubung ke internet!") String message,
  }) = _NoInternet;

  const factory AppError.unAuthorized({
    @Default("Anda tidak memiliki akses!") String message,
  }) = _UnAuthorized;
}
