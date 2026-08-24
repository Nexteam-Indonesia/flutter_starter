import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../common/typedefs/typedefs.dart';
import '../../data/models/post/post_model.dart';
import '../../data/repositories/post_repository.dart';
import '../../injection.dart';

part 'pagination_event.dart';
part 'pagination_state.dart';

const throttleDuration = Duration(milliseconds: 100);

/// Number of posts requested per page; a shorter page means the end was hit.
const _pageSize = 10;

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class PaginationBloc extends Bloc<PaginationEvent, PaginationState> {
  final PostRepository repo = locator<PostRepository>();

  PaginationBloc() : super(const PaginationState()) {
    on<PaginationFetch>(
      _onPaginationFetch,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  FutureOr<void> _onPaginationFetch(PaginationFetch event, Emitter<PaginationState> emit) async {
    if (state.hasReachedMax) return;
    // `startIn` is an offset; swap for a page number if the API changes.
    final result = await repo.getPosts(startIn: state.posts.length, limit: _pageSize);
    switch (result) {
      case Success(:final value):
        emit(state.copyWith(
          posts: List.of(state.posts)..addAll(value),
          status: PaginationStatus.success,
          hasReachedMax: value.length < _pageSize,
        ));
      case Failure(:final error):
        emit(state.copyWith(status: PaginationStatus.failure, errorMessage: error.message));
    }
  }
}
