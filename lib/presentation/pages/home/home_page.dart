import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/common/extensions/context_extension.dart';

import '../../../common/widgets/app_error_widget.dart';
import '../../../common/widgets/row_loading_widget.dart';
import '../../../injection.dart';
import '../../components/base/base_scaffold.dart';
import '../../routes/app_router.dart';
import 'cubit/home_cubit.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = locator<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc..getQuakeData(),
      child: BaseScaffold(
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.route.push(const PostRoute());
              },
              child: const Text('Example List Page with pagination'),
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const RowLoadingWidget(),
                  failure: (msg) => AppErrorWidget(
                    message: msg,
                    onTap: () => context.read<HomeCubit>(),
                  ),
                  success: (payload) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(payload.wilayah ?? '-'),
                        ElevatedButton(
                          onPressed: () {
                            locator<AppRouter>().replace(const FormRoute());
                          },
                          child: const Text('Form Validation'),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
