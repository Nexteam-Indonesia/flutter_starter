import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/common/extensions/extensions.dart';
import 'package:next_starter/injection.dart';
import 'package:next_starter/presentation/components/components.dart';
import 'package:next_starter/presentation/pages/auth/auth.dart';
import 'package:next_starter/presentation/pages/auth/otp/otp_page.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../application/auth/auth_cubit.dart';
import '../../theme/theme.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  static const path = "/forgot-password";

  @override
  Widget build(BuildContext context) {
    final form = fb.group({
      'email': ['', Validators.required, Validators.email],
    });
    return BlocProvider(
      create: (context) => locator<AuthCubit>(),
      child: BaseScaffold(
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
                  'Setel Ulang Kata Sandi',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextTheme.paragraph3.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Masukkan email yang terkait dengan akun anda dan kami akan mengirimkan email berisi kode verifikasi untuk mengatur ulang kata sandi anda ',
                  style: CustomTextTheme.paragraph1.copyWith(color: ColorTheme.neutral[600]),
                ),
                20.verticalSpace,
                const TextInput(
                  formControlName: 'email',
                  hint: 'Masukkan email anda',
                  title: "Email",
                  isRequiredText: true,
                  prefix: Icon(Icons.email_outlined),
                  textInputType: TextInputType.emailAddress,
                ),
                const Spacer(),
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
                        context.route.goNamed(OtpPage.path, pathParameters: {
                          "email": formG.rawValue['email'].toString(),
                          "isResetPassword": true.toString(),
                        });
                        context.showSnackbar(title: "Sukses", message: msg);
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
                            //     .forgotPassword(formState.rawValue);
                            context.route.goNamed(OtpPage.path, pathParameters: {
                              "email": formG.rawValue['email'].toString(),
                              "isResetPassword": true.toString(),
                            });
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
      ),
    );
  }
}
