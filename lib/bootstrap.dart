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
    logger.e('onError(${bloc.runtimeType})', error: error, stackTrace: stackTrace);
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap() async {
  return runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final navigatorKey = GlobalKey<NavigatorState>();
      await initializeDependencies(navigatorKey);
      Bloc.observer = AppBlocObserver();
      FlutterError.onError = (FlutterErrorDetails details) {
        logger.e(details.exceptionAsString(), error: details.exception, stackTrace: details.stack);
      };
      runApp(AppPage(navigatorKey: navigatorKey));
    },
    (Object error, StackTrace stackTrace) =>
        logger.e(error.toString(), error: error, stackTrace: stackTrace),
  );
}
