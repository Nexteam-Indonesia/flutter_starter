import 'package:dio/dio.dart';

import '../../../../common/base/base_dio_remote_source.dart';
import '../../../../common/utils/api_path.dart';
import '../../../../data/dto/register_dto.dart';
import '../../../models/auth/session_model.dart';
import '../../network/auth_interceptor.dart';
import 'auth_remote.dart';

class AuthRemoteImpl extends BaseDioRemoteSource implements AuthRemote {
  AuthRemoteImpl(super.dio);

  /// Auth endpoints are called before a session exists, so never send a token.
  Options get _public => Options(extra: {AuthInterceptor.skipAuth: true});

  @override
  Future<void> forgotPassword({required String email}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.forgotPassword,
        data: {
          "email": email,
        },
        options: _public,
      ),
      onResponse: (r) => r,
    );
  }

  @override
  Future<SessionModel> login({required String email, required String password}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.login,
        data: {
          "email": email,
          "password": password,
        },
        options: _public,
      ),
      onResponse: (r) => SessionModel.fromMap(r! as Map<String, dynamic>),
    );
  }

  @override
  Future<String> register(RegisterDto dto) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.register,
        data: dto.toJson(),
        options: _public,
      ),
      onResponse: (r) => r! as String,
      isMessage: true,
    );
  }

  @override
  Future<void> requestOtp({required String email}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.requestOtp + email,
        options: _public,
      ),
      onResponse: (r) => r,
    );
  }

  @override
  Future<void> resendOtp({required String email}) => requestOtp(email: email);

  @override
  Future<void> resetPassword({
    required String email,
    required String password,
    required String confirmPassword,
    required String otp,
  }) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.resetPassword,
        data: {
          "email": email,
          "password": password,
          "password_confirmation": confirmPassword,
          "otp": otp,
        },
        options: _public,
      ),
      onResponse: (r) => r,
    );
  }

  @override
  Future<bool> verifyOtp({required String email, required String oneTimePassword}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.verifyOtp + email,
        data: {
          "otp": oneTimePassword,
        },
        options: _public,
      ),
      onResponse: (r) => r! as bool,
    );
  }
}
