import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:next_starter/data/repositories/post_repository.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../data/models/post/post_model.dart';

part 'pagination_event.dart';
part 'pagination_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@injectable
class PaginationBloc extends Bloc<PaginationEvent, PaginationState> {
  final PostRepository repo;

  PaginationBloc(
    this.repo,
  ) : super(const PaginationState()) {
    on<PaginationFetch>(
      _onPaginationFetch,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  FutureOr<void> _onPaginationFetch(
      PaginationFetch event, Emitter<PaginationState> emit) async {
    if (state.hasReachedMax) return;
    final post = await repo.getPosts(
        startIn: state.posts.length, limit: 10); // bisa diganti dengan page
    post.fold(
      (l) => emit(state.copyWith(
          status: PaginationStatus.failure, errorMessage: l.message)),
      (r) {
        emit(
          r.length < 10
              ? state.copyWith(
                  status: PaginationStatus.success,
                  hasReachedMax: true,
                )
              : state.copyWith(
                  status: PaginationStatus.success,
                  posts: List.of(state.posts)..addAll(r),
                  hasReachedMax: false,
                ),
        );
      },
    );
  }
}
