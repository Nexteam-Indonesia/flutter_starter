import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/theme/theme.dart';

// TODO We can customize this screen as per our design to show errors on debug and release mode
class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    Key? key,
    required this.message,
    this.onTap,
  }) : super(key: key);

  final String message;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 60,
          ),
          16.verticalSpace,
          Text(
            message,
            style: CustomTextTheme.paragraph1.copyWith(
              color: ColorTheme.statusRed,
            ),
          ),
          8.verticalSpace,
          Text(
            "Tap to reload",
            style: CustomTextTheme.caption.copyWith(
              color: ColorTheme.textGrey,
            ),
          ),
        ],
      ),
    ).wFull(context);
  }
}
