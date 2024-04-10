part of 'connectivity_cubit.dart';

sealed class ConnectivityState extends Equatable {
  const ConnectivityState();

  @override
  List<Object> get props => [];
}

final class ConnectivityInitial extends ConnectivityState {}

final class ConnectivityFailure extends ConnectivityState {}

final class ConnectivityNoConnection extends ConnectivityState {}

final class ConnectivitySuccess extends ConnectivityState {}
