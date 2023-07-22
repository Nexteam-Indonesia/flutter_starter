import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;

  /// listen the connectivity change
  Stream<InternetStatus> getStatus();
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  const NetworkInfoImpl(this.checker);

  final InternetConnection checker;

  @override
  Future<bool> get isConnected => checker.hasInternetAccess;

  @override
  Stream<InternetStatus> getStatus() => checker.onStatusChange;
}
