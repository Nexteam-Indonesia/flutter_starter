part of 'forgot_password_page.dart';

class ForgotPasswordController {
  final form = fb.group({
    'email': ['', Validators.required, Validators.email],
  });
  final BuildContext context;
  ForgotPasswordController({
    required this.context,
  });

  void goBack() {
    context.route.pop();
  }

  void authListener(BuildContext context, AuthState state, FormGroup formG) {
    if (state is AuthLoading) {
      context.showLoadingIndicator();
    } else if (state is AuthError) {
      context.showSnackbar(isPop: true, message: state.message, error: true);
    } else if (state is AuthSuccess) {
      context.hideLoading();
      context.route.goNamed(OtpPage.path, queryParameters: {
        "email": formG.rawValue['email'].toString(),
        "isResetPassword": true.toString(),
      });
      context.showSnackbar(message: state.message, isPop: false);
    }
  }

  void onSubmit(FormGroup formG) {
    FocusManager.instance.primaryFocus?.unfocus();
    // context
    //     .read<AuthCubit>()
    //     .forgotPassword(formState.rawValue);
    context.route.goNamed(OtpPage.path, queryParameters: {
      "email": formG.rawValue['email'].toString(),
      "isResetPassword": true.toString(),
    });
  }
}
