import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'common/logging/logger.dart';
import 'injection.dart';
import 'presentation/pages/app_page.dart';

class AppBlocObserver extends BlocObserver {
  @override
  Future<void> onChange(BlocBase bloc, Change change) async {
    super.onChange(bloc, change);
    logger.d('onChange(${bloc.runtimeType}, change)');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.e('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap() async {
  return runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      Bloc.observer = AppBlocObserver();
      FlutterError.onError = (FlutterErrorDetails details) {
        logger.e(details.exceptionAsString(), details.exception, details.stack);
      };
      await configureDependencies();
      runApp(const AppPage());
    },
    (Object error, StackTrace stackTrace) =>
        logger.e(error.toString(), error, stackTrace),
  );
}
