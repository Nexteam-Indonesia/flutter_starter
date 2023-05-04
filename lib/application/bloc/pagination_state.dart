part of 'pagination_bloc.dart';

enum PaginationStatus { initial, success, failure }

class PaginationState extends Equatable {
  const PaginationState({
    this.status = PaginationStatus.initial,
    this.posts = const <PostModel>[],
    this.hasReachedMax = false,
    // this.page = 1,
  });

  final PaginationStatus status;
  final List<PostModel> posts;
  final bool hasReachedMax;
  // final int page; TODO: bisa diganti dengan page

  PaginationState copyWith({
    PaginationStatus? status,
    List<PostModel>? posts,
    bool? hasReachedMax,
    // int? page, TODO: bisa diganti dengan page
  }) {
    return PaginationState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      // page: page ?? this.page, TODO: bisa diganti dengan page
    );
  }

  @override
  List<Object> get props => [
        status,
        posts,
        hasReachedMax,
        // page
      ];
}
