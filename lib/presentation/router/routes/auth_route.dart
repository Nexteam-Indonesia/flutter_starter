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
      builder: (context, state) => OtpPage(
        email: state.pathParameters['email']!,
        isResetPassword: state.pathParameters['isResetPassword'] == 'true',
      ),
    ),
    GoRoute(
      path: ChangePasswordPage.path,
      name: ChangePasswordPage.path,
      builder: (context, state) => ChangePasswordPage(
        email: state.pathParameters['email'] as String,
        otp: state.pathParameters['otp'] as String,
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
  ];
}
