import 'package:injectable/injectable.dart';
import 'package:next_starter/common/base/base_repository.dart';
import 'package:next_starter/common/logging/logger.dart';
import 'package:next_starter/common/typedefs/typedefs.dart';
import 'package:next_starter/data/datasources/remote_datasources/auth_remote/auth_remote.dart';
import 'package:next_starter/data/datasources/session/session_source.dart';
import 'package:next_starter/data/models/auth/session_model.dart';

import '../dto/register_dto.dart';

@lazySingleton
class AuthRepository extends BaseRepository {
  AuthRepository(super.networkInfo, this.remote, this.session);

  final AuthRemote remote;
  final SessionSource session;

  EitherResponse<void> forgotPassword(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: remote.forgotPassword(email: json['email'].toString().trim()),
      onSuccess: (r) => r,
    );
  }

  EitherResponse<SessionModel> login(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: remote.login(
        email: json['email'].toString().trim(),
        password: json['password'].toString().trim(),
      ),
      onSuccess: (r) => r,
      onSaveToLocal: (data) => session.setToken(data.token ?? ''),
    );
  }

  EitherResponse<String> register(Map<String, dynamic> json) async {
    logger.d(json);
    return handleNetworkCall(
      call: remote.register(RegisterDto.fromJson(json)),
      onSuccess: (r) => r,
    );
  }

  EitherResponse<void> requestOtp(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: remote.requestOtp(email: json['email'].toString().trim()),
      onSuccess: (r) => r,
    );
  }

  EitherResponse<void> resendOtp(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: remote.resendOtp(email: json['email'].toString().trim()),
      onSuccess: (r) => r,
    );
  }

  EitherResponse<bool> verifyOtp(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: remote.verifyOtp(
        email: json['email'].toString().trim(),
        oneTimePassword: json['otp'].toString().trim(),
      ),
      onSuccess: (r) => r,
    );
  }

  EitherResponse<void> resetPassword(Map<String, dynamic> json) async {
    return handleNetworkCall(
      call: remote.resetPassword(
        email: json['email'].toString().trim(),
        password: json['password'].toString().trim(),
        confirmPassword: json['confirmPassword'].toString().trim(),
        otp: json['otp'].toString().trim(),
      ),
      onSuccess: (r) => r,
    );
  }

  EitherResponse<void> logout() async {
    return handleNetworkCall(
      call: session.deleteToken(),
      onSuccess: (r) => r,
    );
  }
}
