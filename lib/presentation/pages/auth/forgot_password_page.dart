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
import 'otp/otp_page.dart';

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
                    if (state is AuthLoading) {
                      context.showLoadingIndicator();
                    } else if (state is AuthError) {
                      context.showSnackbar(title: "Error", message: state.message, error: true);
                    } else if (state is AuthSuccess) {
                      context.hideLoading();
                      context.route.goNamed(OtpPage.path, pathParameters: {
                        "email": formG.rawValue['email'].toString(),
                        "isResetPassword": true.toString(),
                      });
                      context.showSnackbar(title: "Sukses", message: state.message);
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
