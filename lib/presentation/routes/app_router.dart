import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../pages/form/form_page.dart';
import '../pages/home/home_page.dart';
import '../pages/splash_page.dart';

part 'app_router.gr.dart';

@LazySingleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
    AutoRoute(page: FormPage),
  ],
)
class AppRouter extends _$AppRouter {}
