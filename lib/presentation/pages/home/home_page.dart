import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/widgets/app_error_widget.dart';
import '../../../common/widgets/row_loading_widget.dart';
import '../../../injection.dart';
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
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Example List Page with pagination'),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const RowLoadingWidget(),
                failure: (msg) => AppErrorWidget(
                  message: msg,
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
    );
  }
}
