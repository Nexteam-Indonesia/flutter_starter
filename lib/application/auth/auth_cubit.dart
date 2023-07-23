import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/data/repositories/auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
    this.repo,
    // this.userRepo,
  ) : super(const AuthState.initial());

  final AuthRepository repo;

  Future<void> login(Map<String, dynamic> json) async {
    // final NotificationInterface notification = locator<NotificationInterface>();
    emit(const AuthState.loading());
    final result = await repo.login(json);
    await result.fold<FutureOr<void>>(
      (l) => emit(AuthState.error(l.message)),
      (r) async {
        // final user = await userRepo.profile();
        // await user.fold<FutureOr<void>>(
        //   (l) => emit(AuthState.error(l.message)),
        //   (r) async {
        //     // await notification.setExternalUserByEmail(r.email!);
        emit(const AuthState.success("Selamat datang kembali!"));
        //   },
        // );
      },
    );
  }

  Future<void> register(Map<String, dynamic> json) async {
    emit(const AuthState.loading());
    final result = await repo.register(json);
    await result.fold<FutureOr<void>>(
      (l) => emit(AuthState.error(l.message)),
      (r) => emit(const AuthState.success("Registrasi berhasil!")),
    );
  }

  Future<void> verifyOtp(Map<String, dynamic> json) async {
    emit(const AuthState.loading());
    final result = await repo.verifyOtp(json);
    result.fold(
      (l) => emit(AuthState.error(l.message)),
      (r) => emit(const AuthState.success("Email berhasil diverifikasi!")),
    );
  }

  Future<void> resendOtp(Map<String, dynamic> json) async {
    emit(const AuthState.loading());
    final rest = await repo.resendOtp(json);
    rest.fold(
      (l) => emit(AuthState.error(l.message)),
      (r) => emit(const AuthState.successAdd("Kode OTP berhasil dikirim!")),
    );
  }

  Future<void> requestOtp(Map<String, dynamic> json) async {
    emit(const AuthState.loading());
    final rest = await repo.requestOtp(json);
    rest.fold(
      (l) => emit(AuthState.error(l.message)),
      (r) => emit(const AuthState.success("Kode OTP berhasil dikirim!")),
    );
  }

  Future<void> forgotPassword(Map<String, dynamic> json) async {
    emit(const AuthState.loading());
    final rest = await repo.forgotPassword(json);
    rest.fold(
      (l) => emit(AuthState.error(l.message)),
      (r) => emit(const AuthState.success("Kode OTP berhasil dikirim!")),
    );
  }

  Future<void> resetPassword(Map<String, dynamic> rawValue) async {
    emit(const AuthState.loading());
    final result = await repo.resetPassword(rawValue);
    result.fold(
      (l) => emit(AuthState.error(l.message)),
      (r) => emit(const AuthState.success("Kata sandi anda telah diperbarui!")),
    );
  }

  Future<void> logout() async {
    emit(const AuthState.loading());
    final result = await repo.logout();
    result.fold(
      (l) => emit(AuthState.error(l.message)),
      (r) => emit(const AuthState.successLogout("Berhasil keluar!")),
    );
  }
}
