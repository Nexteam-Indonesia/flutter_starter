import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../pages/form/form_page.dart';
import '../pages/home/home_page.dart';
import '../pages/post/post_page.dart';
import '../pages/splash_page.dart';

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
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: FormRoute.page),
    AutoRoute(page: PostRoute.page),
  ];
}
