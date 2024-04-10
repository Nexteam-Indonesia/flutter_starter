import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../application/auth/auth_cubit.dart';
import '../../../common/extensions/extensions.dart';
import '../../../injection.dart';
import '../../components/components.dart';
import '../../theme/theme.dart';
import 'auth.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({
    super.key,
    required this.email,
    required this.otp,
  });

  final String email, otp;

  static const path = "/change-password";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<AuthCubit>(),
      child: ChangePasswordView(
        email: email,
        otp: otp,
      ),
    );
  }
}

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({
    super.key,
    required this.email,
    required this.otp,
  });

  final String email, otp;

  @override
  Widget build(BuildContext context) {
    final fg = fb.group({
      'otp': [otp, Validators.required],
      'email': [email, Validators.required, Validators.email],
      'password': ['', Validators.required, Validators.minLength(6)],
      'confirmPassword': ['', Validators.required],
    }, [
      Validators.mustMatch('password', 'confirmPassword'),
    ]);
    return BaseScaffold(
      body: ReactiveFormBuilder(
        form: () => fg,
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
                'Setel Ulang Kata Sandi',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextTheme.paragraph3.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kata sandi baru Anda harus berbeda dari kata sandi yang digunakan sebelumnya',
                style: CustomTextTheme.paragraph1.copyWith(color: ColorTheme.neutral[600]),
              ),
              20.verticalSpace,
              const PasswordInput(
                formControlName: 'password',
                hint: 'Masukkan Kata Sandi Baru',
                title: "Kata Sandi",
                isRequiredText: true,
                prefix: Icon(Icons.key),
              ),
              6.verticalSpace,
              const PasswordInput(
                formControlName: 'confirmPassword',
                hint: 'Masukkan Konfirmasi Kata Sandi',
                title: "Konfirmasi Kata Sandi",
                isRequiredText: true,
                prefix: Icon(Icons.key),
              ),
              const Spacer(),
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is AuthLoading) {
                    context.showLoadingIndicator();
                  } else if (state is AuthError) {
                    context.showSnackbar(title: "Error", message: state.message, error: true);
                  } else if (state is AuthSuccess) {
                    context.hideLoading();
                    context.route.replaceNamed(SuccessPage.path, pathParameters: {
                      "message": state.message,
                    });
                  }
                },
                builder: (context, state) {
                  return ReactiveFormConsumer(
                    builder: (context, formState, child) {
                      return PrimaryButton(
                        title: "Verifikasi",
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          // context
                          //     .read<AuthCubit>()
                          //     .resetPassword(formState.rawValue);
                          context.route.replaceNamed(
                            SuccessPage.path,
                            pathParameters: {"message": "Berhasil mengubah kata sandi"},
                          );
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
