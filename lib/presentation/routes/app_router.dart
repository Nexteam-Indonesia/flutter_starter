import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:next_starter/presentation/pages/pages.dart';

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
        GoRoute(
          path: HomePage.path,
          name: HomePage.path,
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: FormPage.path,
          name: FormPage.path,
          builder: (context, state) => const FormPage(),
        ),
        GoRoute(
          path: FormPage.path,
          name: FormPage.path,
          builder: (context, state) => const FormPage(),
        ),
        // auth routes
        GoRoute(
          path: RegisterPage.path,
          name: RegisterPage.path,
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: LoginPage.path,
          name: LoginPage.path,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: OtpPage.path,
          name: OtpPage.path,
          builder: (context, state) => OtpPage(
            email: state.pathParameters['email']!,
            isResetPassword: state.pathParameters['isResetPassword'] == 'true',
          ),
        ),
        GoRoute(
          path: ChangePasswordPage.path,
          name: ChangePasswordPage.path,
          builder: (context, state) => ChangePasswordPage(
            email: state.pathParameters['email']!,
            otp: state.pathParameters['otp']!,
          ),
        ),
        GoRoute(
          path: SuccessPage.path,
          name: SuccessPage.path,
          builder: (context, state) => SuccessPage(
            message: state.pathParameters['message']!,
          ),
        ),
        GoRoute(
          path: ForgotPasswordPage.path,
          name: ForgotPasswordPage.path,
          builder: (context, state) => const ForgotPasswordPage(),
        ),
      ],
    );
  }
}
