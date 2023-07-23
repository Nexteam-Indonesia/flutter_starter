part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success(String message) = _Success;
  const factory AuthState.successAdd(String message) = _SuccessAdd;
  const factory AuthState.successLogout(String message) = _SuccessLogout;
  const factory AuthState.error(String message) = _Error;
}
