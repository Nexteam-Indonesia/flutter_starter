part of 'post_page.dart';

class PostController {
  final scrollController = ScrollController();
  final BuildContext context;

  PostController({
    required this.context,
  });

  void _onScroll() {
    if (_isBottom) context.read<PaginationBloc>().add(PaginationFetch());
  }

  bool get _isBottom {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  int itemCount(PaginationState state) =>
      state.hasReachedMax ? state.posts.length : state.posts.length + 1;

  void dispose() {
    scrollController
      ..removeListener(_onScroll)
      ..dispose();
  }
}
