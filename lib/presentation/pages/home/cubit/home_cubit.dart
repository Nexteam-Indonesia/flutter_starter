import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/data/repositories/quake_repository.dart';

import '../../../../data/models/quake/quake_model.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this.repo,
  ) : super(const HomeState.initial());

  final QuakeRepository repo;

  Future<void> getQuakeData() async {
    emit(const HomeState.loading());

    final response = await repo.getLatestQuake();

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
