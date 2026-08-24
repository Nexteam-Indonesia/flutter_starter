import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../common/typedefs/typedefs.dart';
import '../../data/repositories/auth_repository.dart';
import '../../injection.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final AuthRepository repo = locator<AuthRepository>();

  Future<void> login(Map<String, dynamic> json) async {
    emit(AuthLoading());
    // TODO: fetch the user profile here once a user repository exists, so the
    // session is fully hydrated before AuthSuccess is emitted.
    switch (await repo.login(json)) {
      case Success():
        emit(const AuthSuccess("Selamat datang kembali!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }

  Future<void> register(Map<String, dynamic> json) async {
    emit(AuthLoading());
    switch (await repo.register(json)) {
      case Success():
        emit(const AuthSuccess("Registrasi berhasil!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }

  Future<void> verifyOtp(Map<String, dynamic> json) async {
    emit(AuthLoading());
    switch (await repo.verifyOtp(json)) {
      case Success():
        emit(const AuthSuccess("Email berhasil diverifikasi!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }

  Future<void> resendOtp(Map<String, dynamic> json) async {
    emit(AuthLoading());
    switch (await repo.resendOtp(json)) {
      case Success():
        emit(const AuthSuccessAdd("Kode OTP berhasil dikirim!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }

  Future<void> requestOtp(Map<String, dynamic> json) async {
    emit(AuthLoading());
    switch (await repo.requestOtp(json)) {
      case Success():
        emit(const AuthSuccess("Kode OTP berhasil dikirim!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }

  Future<void> forgotPassword(Map<String, dynamic> json) async {
    emit(AuthLoading());
    switch (await repo.forgotPassword(json)) {
      case Success():
        emit(const AuthSuccess("Kode OTP berhasil dikirim!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }

  Future<void> resetPassword(Map<String, dynamic> rawValue) async {
    emit(AuthLoading());
    switch (await repo.resetPassword(rawValue)) {
      case Success():
        emit(const AuthSuccess("Kata sandi anda telah diperbarui!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }

  Future<void> logout() async {
    emit(AuthLoading());
    switch (await repo.logout()) {
      case Success():
        emit(const AuthSuccessLogout("Berhasil keluar!"));
      case Failure(:final error):
        emit(AuthError(error.message));
    }
  }
}
