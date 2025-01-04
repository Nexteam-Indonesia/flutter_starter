import 'package:go_router/go_router.dart';

import '../../pages/auth/auth.dart';

class AuthRoute {
  static final routes = [
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
      builder: (context, state) {
        final query = state.uri.queryParameters;
        return OtpPage(
          email: query['email']!,
          isResetPassword: query['isResetPassword'] == 'true',
        );
      },
    ),
    GoRoute(
      path: ChangePasswordPage.path,
      name: ChangePasswordPage.path,
      builder: (context, state) {
        final query = state.uri.queryParameters;
        return ChangePasswordPage(
          email: query['email'] as String,
          otp: query['otp'] as String,
        );
      },
    ),
    GoRoute(
      path: SuccessPage.path,
      name: SuccessPage.path,
      builder: (context, state) {
        final query = state.uri.queryParameters;
        return SuccessPage(
          message: query['message'] as String,
        );
      },
    ),
    GoRoute(
      path: ForgotPasswordPage.path,
      name: ForgotPasswordPage.path,
      builder: (context, state) => const ForgotPasswordPage(),
    ),
  ];
}
