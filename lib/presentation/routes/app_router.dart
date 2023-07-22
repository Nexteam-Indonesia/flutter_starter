import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../pages/pages.dart';

part 'app_router.gr.dart';

@LazySingleton()
@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/'),
    AutoRoute(page: FormRoute.page),
    AutoRoute(page: PostRoute.page),
    // auth
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: OtpRoute.page),
    AutoRoute(page: ChangePasswordRoute.page),
    AutoRoute(page: ForgotPasswordRoute.page),
    AutoRoute(page: SuccessRoute.page),
    AutoRoute(page: HomeRoute.page),
  ];
}
