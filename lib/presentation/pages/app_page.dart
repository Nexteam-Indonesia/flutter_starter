import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:overlay_support/overlay_support.dart';

import '../../common/utils/config.dart';
import '../components/app_error_view.dart';
import '../router/app_router.dart';
import '../theme/theme.dart';

class AppPage extends StatefulWidget {
  const AppPage({
    super.key,
    required this.navigatorKey,
  });

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  late final GoRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter.router(widget.navigatorKey);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => OverlaySupport(
        child: FlavorBanner(
          child: MaterialApp.router(
            title: Configs.titleApp,
            theme: AppCoreTheme.theme,
            darkTheme: AppCoreTheme.theme,
            debugShowCheckedModeBanner: false,
            routeInformationProvider: _appRouter.routeInformationProvider,
            routeInformationParser: _appRouter.routeInformationParser,
            routerDelegate: _appRouter.routerDelegate,
            builder: (BuildContext context, Widget? child) {
              ErrorWidget.builder = (FlutterErrorDetails details) => AppErrorView(details: details);
              return child!;
            },
          ),
        ),
      ),
    );
  }
}
