import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/common/extensions/context_extension.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/components/components.dart';
import 'package:next_starter/presentation/pages/auth/auth.dart';
import 'package:next_starter/presentation/theme/theme.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_pinput/reactive_pinput.dart';

import '../../../../application/auth/auth_cubit.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({
    super.key,
    required this.email,
    this.isResetPassword = false,
  });

  final String email;
  final bool isResetPassword;
  static const path = "/otp";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<AuthCubit>(),
      child: OtpView(
        email: email,
        isResetPassword: isResetPassword,
      ),
    );
  }
}

class OtpView extends StatefulWidget {
  const OtpView({
    super.key,
    required this.email,
    this.isResetPassword = false,
  });

  final String email;
  final bool isResetPassword;

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final form = fb.group({
    'otp': ['', Validators.required],
  });
  bool showResend = false;
  final timerController = GlobalKey<ResendOtpTimerState>();

  @override
  void initState() {
    super.initState();
    if (mounted) {
      timerController.currentState?.start();
    }
  }

  @override
  void dispose() {
    timerController.currentState?.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: ReactiveFormBuilder(
        form: () => form,
        builder: (context, formG, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackRoundButton(
                icon: Icons.arrow_back_ios_new_rounded,
                size: 36,
                onTap: () {
                  context.route.pop();
                },
              ),
              20.verticalSpace,
              Text(
                'Email Verification',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextTheme.paragraph3.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Masukkan kode verifikasi yang kami kirimkan kepada '
                'Anda di: ${widget.email}',
                style: CustomTextTheme.paragraph1.copyWith(color: ColorTheme.neutral[600]),
              ),
              20.verticalSpace,
              ReactivePinPut(
                formControlName: 'otp',
                length: 5,
              ),
              20.verticalSpace,
              Center(
                child: Text.rich(
                  TextSpan(
                    text: "Tidak menerima kode? ",
                    children: [
                      TextSpan(
                        text: 'Kirim Ulang',
                        style: TextStyle(
                          color: showResend ? ColorTheme.primary : ColorTheme.neutral[800],
                          fontWeight: showResend ? FontWeight.bold : null,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = showResend
                              ? () {
                                  context.read<AuthCubit>().resendOtp({
                                    "email": widget.email,
                                  });
                                  timerController.currentState?.reset();
                                }
                              : null,
                      ),
                    ],
                    style: CustomTextTheme.paragraph1.copyWith(color: ColorTheme.neutral[900]),
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: ResendOtpTimer(
                  key: timerController,
                  onElapsed: () {
                    setState(() {
                      showResend = true;
                    });
                  },
                ),
              ),
              15.verticalSpace,
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    loading: () => context.showLoadingIndicator(),
                    error: (msg) {
                      context.showSnackbar(title: "Error", message: msg, error: true);
                    },
                    success: (msg) {
                      context.hideLoading();
                      if (widget.isResetPassword) {
                        context.route.replaceNamed(
                          ChangePasswordPage.path,
                          pathParameters: {
                            "email": widget.email,
                            "otp": formG.rawValue['otp'].toString(),
                          },
                        );
                        return;
                      }
                      context.route
                          .replaceNamed(SuccessPage.path, pathParameters: {"message": msg});
                    },
                    successAdd: (msg) {
                      context.hideLoading();
                      context.showSnackbar(title: "", message: msg);
                      timerController.currentState?.start();
                      setState(() {
                        showResend = false;
                      });
                    },
                  );
                },
                builder: (context, state) {
                  return ReactiveFormConsumer(
                    builder: (context, formState, child) {
                      return PrimaryButton(
                        title: "Verifikasi",
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          if (widget.isResetPassword) {
                            context.route.replaceNamed(
                              ChangePasswordPage.path,
                              pathParameters: {
                                "email": widget.email,
                                "otp": formG.rawValue['otp'].toString(),
                              },
                            );
                          } else {
                            // context.read<AuthCubit>().verifyOtp({
                            //   "email": widget.email,
                            //   "otp": formState.rawValue['otp'],
                            // });
                            context.route.replaceNamed(SuccessPage.path,
                                pathParameters: {"message": "Berhasil verifikasi OTP"});
                          }
                        },
                        isEnable: formState.valid,
                      );
                    },
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
