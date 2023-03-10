import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/contract/quake_contract.dart';
import '../../../../data/models/quake/quake_model.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.contract) : super(const HomeState.initial());

  QuakeContract contract;

  Future<void> getQuakeData() async {
    emit(const HomeState.loading());

    final response = await contract.getLatestQuake();

    response.fold(
      (l) {
        emit(HomeState.failure(l.message));
      },
      (r) {
        emit(HomeState.success(r));
      },
    );
  }
}
