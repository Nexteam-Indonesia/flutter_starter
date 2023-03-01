import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../../presentation/theme/theme.dart';
import '../extensions/extensions.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({
    super.key,
    required this.title,
    required this.message,
    this.error = false,
    this.textColor = ColorTheme.white,
  });

  final String title;
  final String message;
  final bool error;
  final Color textColor;

  Color get bgColor => error ? ColorTheme.fabRedBackground : ColorTheme.primary;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Container(
            width: 10.w,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.horizontal(left: 10.circular),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.text14PxMedium.copyWith(color: textColor),
                  ),
                  10.verticalSpace,
                  Text(
                    message,
                    style: AppStyles.text14Px.copyWith(color: textColor),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
