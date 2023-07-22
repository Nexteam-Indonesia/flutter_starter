import '../../../dto/register_dto.dart';
import '../../../models/auth/session_model.dart';

abstract class AuthRemote {
  Future<SessionModel> login({
    required String email,
    required String password,
  });

  Future<String> register(RegisterDto dto);

  Future<void> requestOtp({
    required String email,
  });

  Future<void> resendOtp({
    required String email,
  });

  Future<void> forgotPassword({
    required String email,
  });

  Future<bool> verifyOtp({
    required String email,
    required String oneTimePassword,
  });

  Future<void> resetPassword({
    required String email,
    required String password,
    required String confirmPassword,
    required String otp,
  });
}
