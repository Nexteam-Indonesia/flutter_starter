import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;

  /// listen the connectivity change
  Stream<InternetConnectionStatus> getStatus();
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  const NetworkInfoImpl(this.checker);

  final InternetConnectionChecker checker;

  @override
  Future<bool> get isConnected => checker.hasConnection;

  @override
  Stream<InternetConnectionStatus> getStatus() => checker.onStatusChange;
}
