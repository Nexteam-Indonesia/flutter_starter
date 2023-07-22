import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:next_starter/common/extensions/context_extension.dart';
import 'package:next_starter/presentation/components/components.dart';
import 'package:next_starter/presentation/routes/app_router.dart';
import 'package:next_starter/presentation/theme/theme.dart';

@RoutePage()
class SuccessPage extends StatelessWidget {
  const SuccessPage({
    Key? key,
    required this.message,
  }) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      bottomNavigationBar: PrimaryButton(
        title: "Lanjutkan",
        isEnable: true,
        onTap: () {
          context.route
              .pushAndPopUntil(LoginRoute(), predicate: (route) => false);
        },
      ).p20(),
      body: SizedBox(
        width: context.safePercentWidth * 100,
        height: context.safePercentHeight * 100,
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
              style: CustomTextTheme.paragraph1
                  .copyWith(color: ColorTheme.neutral[600]),
            ),
          ],
        ),
      ),
    );
  }
}
