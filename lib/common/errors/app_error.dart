import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

/// A failure expressed in terms the application layer can act on.
///
/// Every variant carries a user-facing [message], so `AppError.message` is safe
/// to read without matching on the specific variant.
@Freezed(copyWith: false, fromJson: false, toJson: false)
sealed class AppError with _$AppError {
  const factory AppError.serverError({
    @Default(400) int code,
    required String message,
  }) = ServerError;

  const factory AppError.validationError({
    required String message,
    @Default({}) Map<String, dynamic> errors,
  }) = ValidationError;

  const factory AppError.noInternet({
    @Default("Anda Tidak terhubung ke internet!") String message,
  }) = NoInternetError;

  const factory AppError.timeOut({
    @Default("Koneksi gagal karena waktu habis!") String message,
  }) = TimeOutError;

  const factory AppError.badCertificate({
    @Default("Sertifikat tidak valid!") String message,
  }) = BadCertificateError;

  const factory AppError.badResponse({
    @Default("Respon tidak valid!") String message,
  }) = BadResponseError;

  const factory AppError.unAuthorized({
    @Default("Anda tidak memiliki akses!") String message,
  }) = UnAuthorizedError;
}
