part of 'change_password_page.dart';

class ChangePasswordController {
  final String email, otp;
  final BuildContext context;
  late final FormGroup fGroup;
  ChangePasswordController({
    required this.email,
    required this.otp,
    required this.context,
  }) {
    fGroup = fb.group({
      'otp': [otp, Validators.required],
      'email': [email, Validators.required, Validators.email],
      'password': ['', Validators.required, Validators.minLength(6)],
      'confirmPassword': ['', Validators.required],
    }, [
      Validators.mustMatch('password', 'confirmPassword'),
    ]);
  }

  void back() {
    if (context.route.canPop()) {
      context.route.pop();
    } else {
      context.route.goNamed(LoginPage.path);
    }
  }

  void authListener(BuildContext context, AuthState state) {
    if (state is AuthLoading) {
      context.showLoadingIndicator();
    } else if (state is AuthError) {
      context.showSnackbar(message: state.message, error: true, isPop: true);
    } else if (state is AuthSuccess) {
      context.hideLoading();
      context.route.replaceNamed(SuccessPage.path, queryParameters: {
        "message": state.message,
      });
    }
  }

  void btnSubmit() {
    FocusManager.instance.primaryFocus?.unfocus();
    // context
    //     .read<AuthCubit>()
    //     .resetPassword(formState.rawValue);
    context.route.replaceNamed(
      SuccessPage.path,
      queryParameters: {"message": "Berhasil mengubah kata sandi"},
    );
  }
}
