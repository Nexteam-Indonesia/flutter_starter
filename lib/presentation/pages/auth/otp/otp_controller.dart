part of 'otp_page.dart';

class OtpController extends Cubit<bool> {
  final BuildContext context;
  final bool isResetPassword;
  final String email;
  final timerController = GlobalKey<ResendOtpTimerState>();
  final form = fb.group({
    'otp': ['', Validators.required],
  });

  OtpController(this.context, this.isResetPassword, this.email) : super(false) {
    timerController.currentState?.start();
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
      context.showSnackbar(message: state.message, error: true);
    } else if (state is AuthSuccess) {
      context.hideLoading();
      if (isResetPassword) {
        context.route.replaceNamed(
          ChangePasswordPage.path,
          queryParameters: {
            "email": email,
            "otp": form.rawValue['otp'].toString(),
          },
        );
        return;
      }
      context.route.replaceNamed(SuccessPage.path, queryParameters: {
        "message": state.message,
      });
    } else if (state is AuthSuccessAdd) {
      context.showSnackbar(message: state.message);
      timerController.currentState?.start();

      emit(false);
    }
  }

  void reset() {
    context.read<AuthCubit>().resendOtp({
      "email": email,
    });
    timerController.currentState?.reset();
  }

  void resendOtp() {
    emit(true);
  }

  void btnVerification(FormGroup formG) {
    FocusManager.instance.primaryFocus?.unfocus();
    if (isResetPassword) {
      context.route.replaceNamed(
        ChangePasswordPage.path,
        queryParameters: {
          "email": email,
          "otp": formG.rawValue['otp'].toString(),
        },
      );
    } else {
      // context.read<AuthCubit>().verifyOtp({
      //   "email": email,
      //   "otp": formState.rawValue['otp'],
      // });
      context.route.replaceNamed(SuccessPage.path,
          queryParameters: {"message": "Berhasil verifikasi OTP"});
    }
  }

  void dispose() {
    timerController.currentState?.stop();
    timerController.currentState?.dispose();
  }
}
