import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/common/widgets/app_error_widget.dart';
import 'package:next_starter/common/widgets/loading_indicator_widget.dart';
import 'package:next_starter/common/widgets/row_loading_widget.dart';

import '../../../application/bloc/pagination_bloc.dart';
import '../../../injection.dart';
import '../../components/base/base_app_bar.dart';
import '../../components/base/base_scaffold.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<PaginationBloc>()..add(PaginationFetch()),
      child: const PostView(),
    );
  }
}

class PostView extends StatefulWidget {
  const PostView({super.key});

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) context.read<PaginationBloc>().add(PaginationFetch());
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: const BaseAppBar(
        title: 'Posts',
      ),
      body: BlocBuilder<PaginationBloc, PaginationState>(
        builder: (context, state) {
          switch (state.status) {
            case PaginationStatus.failure:
              return AppErrorWidget(
                message: state.errorMessage,
                onTap: () =>
                    context.read<PaginationBloc>().add(PaginationFetch()),
              );
            case PaginationStatus.success:
              if (state.posts.isEmpty) {
                return const Center(child: Text('no posts'));
              }
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int i) {
                  return i >= state.posts.length
                      ? const RowLoadingWidget()
                      : ListTile(
                          title: Text("${state.posts[i].title}"),
                          subtitle: Text("${state.posts[i].body}"),
                          leading: Text("${state.posts[i].id}"),
                        );
                },
                itemCount: state.hasReachedMax
                    ? state.posts.length
                    : state.posts.length + 1,
                controller: _scrollController,
              );
            case PaginationStatus.initial:
              return const LoadingIndicatorWidget();
          }
        },
      ),
    );
  }
}
