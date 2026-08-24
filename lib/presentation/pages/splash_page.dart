import 'dart:async';

import 'package:dio_log/dio_log.dart';
import 'package:flavor/flavor.dart';
import 'package:flutter/material.dart';

import '../../common/extensions/extensions.dart';
import '../../data/datasources/session/session_source.dart';
import '../../injection.dart';
import '../components/components.dart';
import '../theme/theme.dart';
import 'auth/auth.dart';
import 'home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const path = "/";

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await 3.delayedSeconds;
    // The splash can be popped or backgrounded during either await, which
    // deactivates this element; touching `context` afterwards would throw.
    if (!mounted) return;
    if (Flavor.instance.environment != Environment.production) {
      showDebugBtn(context, btnColor: Colors.green);
    }

    final hasSession = await locator<SessionSource>().hasSession;
    if (!mounted) return;
    unawaited(context.route.replace<void>(hasSession ? HomePage.path : LoginPage.path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: 12.rounded,
          border: Border.all(
            color: ColorTheme.primary,
          ),
        ),
        child: const BaseLogo(),
      ),
    );
  }
}
