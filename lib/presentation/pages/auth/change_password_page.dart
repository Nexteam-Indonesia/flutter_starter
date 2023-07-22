import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/components/components.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../application/auth/auth_cubit.dart';
import '../../theme/theme.dart';

@RoutePage()
class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({
    Key? key,
    required this.email,
    required this.otp,
  }) : super(key: key);

  final String email, otp;

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
    Key? key,
    required this.email,
    required this.otp,
  }) : super(key: key);

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
                  context.router.pop();
                },
              ),
              20.verticalSpaceRadius,
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
                style: CustomTextTheme.paragraph1
                    .copyWith(color: ColorTheme.neutral[600]),
              ),
              20.verticalSpaceRadius,
              const PasswordInput(
                formControlName: 'password',
                hint: 'Masukkan Kata Sandi Baru',
                title: "Kata Sandi",
                isRequiredText: true,
                prefix: Icon(Icons.key),
              ),
              6.verticalSpaceRadius,
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
                  state.maybeWhen(
                    orElse: () {},
                    loading: () => context.showLoadingIndicator(),
                    error: (msg) {
                      context.showSnackbar(
                          title: "Error", message: msg, error: true);
                    },
                    success: (msg) {
                      context.hideLoading();
                      context.route.replace(SuccessRoute(message: msg));
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
                          // context
                          //     .read<AuthCubit>()
                          //     .resetPassword(formState.rawValue);
                          context.route.replace(SuccessRoute(
                              message: "Berhasil mengubah kata sandi"));
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
