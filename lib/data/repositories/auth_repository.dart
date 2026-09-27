import '../../../../common/errors/app_error.dart';
import '../../../../common/logging/logger.dart';
import '../../../../common/typedefs/typedefs.dart';
import '../../../../data/datasources/remote_datasources/auth_remote/auth_remote.dart';
import '../../../../data/datasources/session/session_source.dart';
import '../../../../data/models/auth/session_model.dart';
import '../../common/base/base_repository.dart';
import '../dto/register_dto.dart';

class AuthRepository extends BaseRepository {
  AuthRepository(super.networkInfo, this.remote, this.session);

  final AuthRemote remote;
  final SessionSource session;

  FutureResult<void> forgotPassword(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: () => remote.forgotPassword(email: json['email'].toString().trim()),
      onSuccess: (r) => r,
    );
  }

  FutureResult<SessionModel> login(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: () => remote.login(
        email: json['email'].toString().trim(),
        password: json['password'].toString().trim(),
      ),
      onSuccess: (r) => r,
      onSaveToLocal: (data) => session.setToken(data.token ?? ''),
    );
  }

  FutureResult<String> register(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: () => remote.register(RegisterDto.fromJson(json)),
      onSuccess: (r) => r,
    );
  }

  FutureResult<void> requestOtp(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: () => remote.requestOtp(email: json['email'].toString().trim()),
      onSuccess: (r) => r,
    );
  }

  FutureResult<void> resendOtp(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: () => remote.resendOtp(email: json['email'].toString().trim()),
      onSuccess: (r) => r,
    );
  }

  FutureResult<bool> verifyOtp(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: () => remote.verifyOtp(
        email: json['email'].toString().trim(),
        oneTimePassword: json['otp'].toString().trim(),
      ),
      onSuccess: (r) => r,
    );
  }

  FutureResult<void> resetPassword(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: () => remote.resetPassword(
        email: json['email'].toString().trim(),
        password: json['password'].toString().trim(),
        confirmPassword: json['confirmPassword'].toString().trim(),
        otp: json['otp'].toString().trim(),
      ),
      onSuccess: (r) => r,
    );
  }

  /// Clears the local session. Local-only, so it works offline.
  FutureResult<void> logout() async {
    try {
      await session.deleteAll();
      return const Success(null);
    } catch (e, stackTrace) {
      logger.e('Failed to clear the session', error: e, stackTrace: stackTrace);
      return const Failure(AppError.serverError(message: 'Gagal keluar, silakan coba lagi'));
    }
  }
}
