import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/pages.dart';
import 'routes/auth_route.dart';
import 'routes/general_route.dart';

class AppRouter {
  static GoRouter router(GlobalKey<NavigatorState> navigatorKey) {
    return GoRouter(
      navigatorKey: navigatorKey,
      routes: [
        GoRoute(
          path: SplashPage.path,
          name: SplashPage.path,
          builder: (context, state) => const SplashPage(),
        ),
        ...AuthRoute.routes,
        ...GeneralRoute.routes,
      ],
    );
  }
}
