// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ForgotPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordPage(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginPage(
          key: args.key,
          isAddAccount: args.isAddAccount,
        ),
      );
    },
    OtpRoute.name: (routeData) {
      final args = routeData.argsAs<OtpRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OtpPage(
          key: args.key,
          email: args.email,
          isResetPassword: args.isResetPassword,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    SuccessRoute.name: (routeData) {
      final args = routeData.argsAs<SuccessRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SuccessPage(
          key: args.key,
          message: args.message,
        ),
      );
    },
    FormRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FormPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    PostRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PostPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChangePasswordPage(
          key: args.key,
          email: args.email,
          otp: args.otp,
        ),
      );
    },
  };
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    bool isAddAccount = false,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            isAddAccount: isAddAccount,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.isAddAccount = false,
  });

  final Key? key;

  final bool isAddAccount;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isAddAccount: $isAddAccount}';
  }
}

/// generated route for
/// [OtpPage]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    required String email,
    bool isResetPassword = false,
    List<PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            email: email,
            isResetPassword: isResetPassword,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const PageInfo<OtpRouteArgs> page = PageInfo<OtpRouteArgs>(name);
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    required this.email,
    this.isResetPassword = false,
  });

  final Key? key;

  final String email;

  final bool isResetPassword;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, email: $email, isResetPassword: $isResetPassword}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SuccessPage]
class SuccessRoute extends PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute({
    Key? key,
    required String message,
    List<PageRouteInfo>? children,
  }) : super(
          SuccessRoute.name,
          args: SuccessRouteArgs(
            key: key,
            message: message,
          ),
          initialChildren: children,
        );

  static const String name = 'SuccessRoute';

  static const PageInfo<SuccessRouteArgs> page =
      PageInfo<SuccessRouteArgs>(name);
}

class SuccessRouteArgs {
  const SuccessRouteArgs({
    this.key,
    required this.message,
  });

  final Key? key;

  final String message;

  @override
  String toString() {
    return 'SuccessRouteArgs{key: $key, message: $message}';
  }
}

/// generated route for
/// [FormPage]
class FormRoute extends PageRouteInfo<void> {
  const FormRoute({List<PageRouteInfo>? children})
      : super(
          FormRoute.name,
          initialChildren: children,
        );

  static const String name = 'FormRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PostPage]
class PostRoute extends PageRouteInfo<void> {
  const PostRoute({List<PageRouteInfo>? children})
      : super(
          PostRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChangePasswordPage]
class ChangePasswordRoute extends PageRouteInfo<ChangePasswordRouteArgs> {
  ChangePasswordRoute({
    Key? key,
    required String email,
    required String otp,
    List<PageRouteInfo>? children,
  }) : super(
          ChangePasswordRoute.name,
          args: ChangePasswordRouteArgs(
            key: key,
            email: email,
            otp: otp,
          ),
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const PageInfo<ChangePasswordRouteArgs> page =
      PageInfo<ChangePasswordRouteArgs>(name);
}

class ChangePasswordRouteArgs {
  const ChangePasswordRouteArgs({
    this.key,
    required this.email,
    required this.otp,
  });

  final Key? key;

  final String email;

  final String otp;

  @override
  String toString() {
    return 'ChangePasswordRouteArgs{key: $key, email: $email, otp: $otp}';
  }
}
