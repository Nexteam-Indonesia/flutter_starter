import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/common/utils/config.dart';

import '../../common/logging/logger.dart';
import '../../injection.dart';
import '../components/app_error_view.dart';
import '../routes/app_router.dart';
import '../theme/theme.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final _appRouter = locator<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return AdaptiveSizer(
      builder: (context) => FlavorBanner(
        child: MaterialApp.router(
          title: Configs.titleApp,
          theme: AppCoreTheme.theme,
          darkTheme: AppCoreTheme.theme,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(
            navigatorObservers: () => [
              MyObserver(),
            ],
          ),
          builder: (BuildContext context, Widget? child) {
            ErrorWidget.builder =
                (FlutterErrorDetails details) => AppErrorView(details: details);
            return child!;
          },
        ),
      ),
    );
  }
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    logger.d('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.d('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.d('Tab route re-visited: ${route.name}');
  }
}
