import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../injection.dart';
import '../../routes/app_router.dart';
import 'cubit/home_cubit.dart';

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
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            failure: (failure) => Center(
              child: Text(failure.message),
            ),
            success: (success) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(success.model.wilayah ?? '-'),
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
    );
  }
}
