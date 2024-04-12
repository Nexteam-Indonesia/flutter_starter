import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(ConnectivityInitial());

  void noConnection() {
    emit(ConnectivityNoConnection());
  }

  Future<void> reConnect() async {
    final check = await Connectivity().checkConnectivity();
    if (check.first == ConnectivityResult.none) {
      emit(ConnectivityFailure());
      return;
    }
    emit(ConnectivitySuccess());
  }
}
