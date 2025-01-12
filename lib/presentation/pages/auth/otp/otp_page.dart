import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_pinput/reactive_pinput.dart';

import '../../../../application/auth/auth_cubit.dart';
import '../../../../injection.dart';
import '../../../components/components.dart';
import '../../../theme/theme.dart';
import '../auth.dart';

part 'otp_controller.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => OtpController(context, isResetPassword, email),
        ),
      ],
      child: OtpView(),
    );
  }
}

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final c = context.read<OtpController>();
    return BlocBuilder<OtpController, bool>(
      builder: (context, showResend) {
        return BaseScaffold(
          body: ReactiveFormBuilder(
            form: () => c.form,
            builder: (context, formG, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackRoundButton(
                    icon: Icons.arrow_back_ios_new_rounded,
                    size: 36,
                    onTap: c.back,
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
                    'Anda di: ${c.email}',
                    style: CustomTextTheme.paragraph1
                        .copyWith(color: ColorTheme.neutral[600]),
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReactivePinPut(
                        formControlName: 'otp',
                        length: 5,
                      ),
                    ],
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
                              color: showResend
                                  ? ColorTheme.primary
                                  : ColorTheme.neutral[800],
                              fontWeight: showResend ? FontWeight.bold : null,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = showResend ? c.reset : null,
                          ),
                        ],
                        style: CustomTextTheme.paragraph1
                            .copyWith(color: ColorTheme.neutral[900]),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: ResendOtpTimer(
                      key: c.timerController,
                      onElapsed: c.resendOtp,
                    ),
                  ),
                  15.verticalSpace,
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: c.authListener,
                    builder: (context, state) {
                      return ReactiveFormConsumer(
                        builder: (context, formState, child) {
                          return PrimaryButton(
                            title: "Verifikasi",
                            onTap: () => c.btnVerification(formG),
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
      },
    );
  }
}
