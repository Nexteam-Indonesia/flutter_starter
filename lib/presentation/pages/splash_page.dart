import 'package:flutter/material.dart';
import 'package:next_starter/data/datasources/session/session_source.dart';
import 'package:next_starter/presentation/components/components.dart';
import 'package:next_starter/presentation/pages/auth/auth.dart';
import 'package:next_starter/presentation/pages/home/home_page.dart';
import 'package:next_starter/presentation/theme/theme.dart';

import '../../common/extensions/extensions.dart';
import '../../injection.dart';

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
    final user = await locator<SessionSource>().hasSession;
    if (user) {
      context.route.replace(HomePage.path);
      return;
    }
    context.route.replace(LoginPage.path);
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
