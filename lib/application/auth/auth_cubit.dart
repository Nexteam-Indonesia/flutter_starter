import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/repositories/auth_repository.dart';
import '../../injection.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final AuthRepository repo = locator<AuthRepository>();

  Future<void> login(Map<String, dynamic> json) async {
    // final NotificationInterface notification = locator<NotificationInterface>();
    emit(AuthLoading());
    final result = await repo.login(json);
    await result.fold<FutureOr<void>>(
      (l) => emit(AuthError(l.message)),
      (r) async {
        // final user = await userRepo.profile();
        // await user.fold<FutureOr<void>>(
        //   (l) => emit(AuthError(l.message)),
        //   (r) async {
        //     // await notification.setExternalUserByEmail(r.email!);
        emit(const AuthSuccess("Selamat datang kembali!"));
        //   },
        // );
      },
    );
  }

  Future<void> register(Map<String, dynamic> json) async {
    emit(AuthLoading());
    final result = await repo.register(json);
    await result.fold<FutureOr<void>>(
      (l) => emit(AuthError(l.message)),
      (r) => emit(const AuthSuccess("Registrasi berhasil!")),
    );
  }

  Future<void> verifyOtp(Map<String, dynamic> json) async {
    emit(AuthLoading());
    final result = await repo.verifyOtp(json);
    result.fold(
      (l) => emit(AuthError(l.message)),
      (r) => emit(const AuthSuccess("Email berhasil diverifikasi!")),
    );
  }

  Future<void> resendOtp(Map<String, dynamic> json) async {
    emit(AuthLoading());
    final rest = await repo.resendOtp(json);
    rest.fold(
      (l) => emit(AuthError(l.message)),
      (r) => emit(const AuthSuccessAdd("Kode OTP berhasil dikirim!")),
    );
  }

  Future<void> requestOtp(Map<String, dynamic> json) async {
    emit(AuthLoading());
    final rest = await repo.requestOtp(json);
    rest.fold(
      (l) => emit(AuthError(l.message)),
      (r) => emit(const AuthSuccess("Kode OTP berhasil dikirim!")),
    );
  }

  Future<void> forgotPassword(Map<String, dynamic> json) async {
    emit(AuthLoading());
    final rest = await repo.forgotPassword(json);
    rest.fold(
      (l) => emit(AuthError(l.message)),
      (r) => emit(const AuthSuccess("Kode OTP berhasil dikirim!")),
    );
  }

  Future<void> resetPassword(Map<String, dynamic> rawValue) async {
    emit(AuthLoading());
    final result = await repo.resetPassword(rawValue);
    result.fold(
      (l) => emit(AuthError(l.message)),
      (r) => emit(const AuthSuccess("Kata sandi anda telah diperbarui!")),
    );
  }

  Future<void> logout() async {
    emit(AuthLoading());
    final result = await repo.logout();
    result.fold(
      (l) => emit(AuthError(l.message)),
      (r) => emit(const AuthSuccessLogout("Berhasil keluar!")),
    );
  }
}
