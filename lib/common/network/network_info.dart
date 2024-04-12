import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<List<ConnectivityResult>> getStatus();
}

class NetworkInfoImpl implements NetworkInfo {
  const NetworkInfoImpl(this.checker);

  final Connectivity checker;

  @override
  Future<List<ConnectivityResult>> getStatus() => checker.checkConnectivity();
}
