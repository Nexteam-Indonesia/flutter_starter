import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:next_starter/presentation/pages/home/home_page.dart';
import 'package:next_starter/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@LazySingleton()
@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
class AppRouter extends _$AppRouter {}
