import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../application/auth/auth_cubit.dart';
import '../../../../../injection.dart';
import '../../../../common/extensions/extensions.dart';
import '../../../components/components.dart';
import '../../../theme/theme.dart';
import '../../home/home_page.dart';
import '../auth.dart';

part 'login_controller.dart';

class LoginPage extends StatelessWidget {
  final bool isAddAccount;
  static const path = "/login";

  const LoginPage({super.key, this.isAddAccount = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<AuthCubit>(),
      child: LoginView(isAddAccount: isAddAccount),
    );
  }
}

class LoginView extends StatelessWidget {
  final bool isAddAccount;

  const LoginView({
    super.key,
    required this.isAddAccount,
  });

  @override
  Widget build(BuildContext context) {
    final c = LoginController(context: context, isAddAccount: isAddAccount);
    return ReactiveFormBuilder(
      form: () => c.form,
      builder: (context, form, child) => BaseScaffold(
        bottomNavigationBar: Container(
          height: kBottomNavigationBarHeight * 2.5,
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: c.authListener,
            builder: (context, state) {
              return ReactiveFormConsumer(
                builder: (context, formG, child) {
                  return Column(
                    children: [
                      PrimaryButton(
                        onTap: c.onLogin,
                        title: "Masuk",
                        isEnable: formG.valid,
                      ),
                      18.verticalSpace,
                      Text.rich(
                        TextSpan(
                          text: "Belum memiliki akun? ",
                          style: AppStyles.text14Px.copyWith(
                            color: ColorTheme.black,
                          ),
                          children: [
                            TextSpan(
                              text: "Daftar",
                              style: AppStyles.text14PxBold.copyWith(
                                color: ColorTheme.primary,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = c.goRegister,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: kBottomNavigationBarHeight,
                  bottom: 20,
                ),
                child: BaseLogo(isSmall: true),
              ),
              Text(
                'Selamat datang di Nexteam',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: CustomTextTheme.paragraph3.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Harap masukkan email dan password dengan benar',
                style: AppStyles.text14Px.copyWith(
                  color: ColorTheme.neutral[600],
                ),
              ),
              50.verticalSpace,
              const TextInput(
                title: "Email",
                formControlName: "email",
                hint: 'Masukkan Email anda',
                textInputType: TextInputType.emailAddress,
                prefix: Icon(Icons.person),
                isRequiredText: true,
              ),
              6.verticalSpace,
              const PasswordInput(
                formControlName: "password",
                title: "Password",
                hint: "Masukkan Password anda",
                isRequiredText: true,
                prefix: Icon(Icons.key),
              ),
              8.verticalSpace,
              Text.rich(
                TextSpan(
                  text: "Lupa kata sandi ? ",
                  style: AppStyles.text14Px.copyWith(
                    color: ColorTheme.black,
                  ),
                  children: [
                    TextSpan(
                      text: "Klik di sini",
                      style: AppStyles.text14PxBold.copyWith(
                        color: ColorTheme.primary,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = c.goForgotPassword,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
