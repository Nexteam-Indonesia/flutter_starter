part of 'login_page.dart';

class LoginController {
  final form = fb.group({
    'email': [
      kDebugMode ? 'agus@nexteam.id' : '',
      Validators.required,
      Validators.email,
    ],
    'password': [kDebugMode ? '123a123a123' : '', Validators.required],
  });
  final BuildContext context;
  final bool isAddAccount;
  LoginController({
    required this.context,
    required this.isAddAccount,
  });

  void onLogin() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (isAddAccount) {
      context.route.pop();
    } else {
      // context.read<AuthCubit>().login(formG.value);
      context.route.go(HomePage.path);
    }
  }

  void goRegister() => context.route.goNamed(RegisterPage.path);
  void goForgotPassword() => context.route.pushNamed(ForgotPasswordPage.path);

  void authListener(BuildContext cxt, AuthState state) {
    if (state is AuthLoading) {
      context.showLoadingIndicator();
    } else if (state is AuthError) {
      context.showSnackbar(message: state.message, error: true);
    } else if (state is AuthSuccess) {
      context.showSnackbar(message: state.message);
      context.route.pushReplacement(HomePage.path);
    }
  }
}
