import 'package:injectable/injectable.dart';
import 'package:next_starter/common/base/base_dio_remote_source.dart';
import 'package:next_starter/common/utils/api_path.dart';
import 'package:next_starter/data/dto/register_dto.dart';

import '../../../models/auth/session_model.dart';
import 'auth_remote.dart';

@LazySingleton(as: AuthRemote)
class AuthRemoteImpl extends BaseDioRemoteSource implements AuthRemote {
  AuthRemoteImpl(super.dio, super.session);

  @override
  Future<void> forgotPassword({required String email}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.forgotPassword,
        data: {
          "email": email,
        },
      ),
      onResponse: (r) => r,
      isAuth: false,
    );
  }

  @override
  Future<SessionModel> login(
      {required String email, required String password}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.login,
        data: {
          "email": email,
          "password": password,
        },
      ),
      onResponse: (r) => SessionModel.fromMap(r['data']),
      isAuth: false,
    );
  }

  @override
  Future<String> register(RegisterDto dto) {
    final form = dto.copyWith(
      unit1: dto.unit1 == -1 ? null : dto.unit1,
      unit2: dto.unit2 == -1 ? null : dto.unit2,
      unit3: dto.unit3 == -1 ? null : dto.unit3,
    );

    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.register,
        data: form.toJson(),
      ),
      onResponse: (r) => r['message'].toString(),
      isAuth: false,
    );
  }

  @override
  Future<void> requestOtp({required String email}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.requestOtp + email,
      ),
      onResponse: (r) => r,
      isAuth: false,
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
      ),
      onResponse: (r) => r,
      isAuth: false,
    );
  }

  @override
  Future<bool> verifyOtp(
      {required String email, required String oneTimePassword}) {
    return networkRequest(
      request: (dio) => dio.post(
        ApiPath.verifyOtp + email,
        data: {
          "otp": oneTimePassword,
        },
      ),
      onResponse: (r) => r['data'],
      isAuth: false,
    );
  }
}
