import 'package:flutter/material.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/pages/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/presentation/routes/app_router.dart';

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
