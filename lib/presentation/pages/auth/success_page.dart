import 'package:flutter/material.dart';
import 'package:next_starter/common/extensions/widget_extension.dart';

import '../../../common/extensions/context_extension.dart';
import '../../components/components.dart';
import '../../theme/theme.dart';
import 'login/login_page.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
    required this.message,
  });

  final String message;

  static const path = "/success";

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      bottomNavigationBar: PrimaryButton(
        title: "Lanjutkan",
        isEnable: true,
        onTap: () {
          context.route.go(LoginPage.path);
        },
      ).pad(20),
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 30, 30),
              child: Image.asset(
                'assets/images/success-illustration.png',
              ),
            ),
            Text(
              'Sukses!',
              style: CustomTextTheme.heading4.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              message,
              style: CustomTextTheme.paragraph1.copyWith(color: ColorTheme.neutral[600]),
            ),
          ],
        ),
      ),
    );
  }
}
