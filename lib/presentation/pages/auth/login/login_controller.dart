part of 'login_page.dart';

class LoginController {
  final form = fb.group({
    'email': ['', Validators.required, Validators.email],
    'password': ['', Validators.required],
  });
  final BuildContext context;
  LoginController({required this.context});

  void onLogin() {
    FocusManager.instance.primaryFocus?.unfocus();
    context.read<AuthCubit>().login(form.value);
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
      context.route.go(HomePage.path);
    }
  }
}
