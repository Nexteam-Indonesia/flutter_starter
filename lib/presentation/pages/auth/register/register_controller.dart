part of 'register_page.dart';

class RegisterController {
  final formG = fb.group(
    {
      'name': ['', Validators.required],
      'email': ['', Validators.required, Validators.email],
      'password': ['', Validators.required, Validators.minLength(8)],
      'phone_number': [
        '',
        Validators.required,
        Validators.pattern(r'^[0-9]+$'),
      ],
    },
  );
  final BuildContext context;

  RegisterController(this.context);

  void authListener(BuildContext context, AuthState state, FormGroup form) {
    if (state is AuthLoading) {
      context.showLoadingIndicator();
    } else if (state is AuthError) {
      context.showSnackbar(message: state.message, error: true);
    } else if (state is AuthSuccess) {
      context.hideLoading();
      context.route.goNamed(
        OtpPage.path,
        queryParameters: {"email": form.controls['email']!.value.toString()},
      );
      context.showSnackbar(message: state.message, isPop: false);
    }
  }

  void onSubmit(FormGroup form) {
    FocusManager.instance.primaryFocus?.unfocus();
    // context.read<AuthCubit>().register(formL.rawValue);
    context.route.goNamed(
      OtpPage.path,
      queryParameters: {"email": form.controls['email']!.value.toString()},
    );
  }

  Map<String, String Function(Object)> passwordMessages = {
    ValidationMessage.minLength: (p0) => 'Password Minimal 8 karakter',
  };

  void onLogin() => context.go(LoginPage.path);
}
