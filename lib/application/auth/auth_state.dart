part of 'auth_cubit.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccessAdd extends AuthState {
  final String message;

  const AuthSuccessAdd(this.message);

  @override
  List<Object> get props => [message];
}

final class AuthSuccessLogout extends AuthState {
  final String message;

  const AuthSuccessLogout(this.message);

  @override
  List<Object> get props => [message];
}

final class AuthSuccess extends AuthState {
  final String message;

  const AuthSuccess(this.message);

  @override
  List<Object> get props => [message];
}

final class AuthError extends AuthState {
  final String message;

  const AuthError(this.message);

  @override
  List<Object> get props => [message];
}
