import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    this.onTap,
    this.isEnable = true,
    this.isSmall = false,
    this.width,
    this.isFullWidth = true,
    this.backgroundColor = ColorTheme.primary,
  }) : super(key: key);

  final String title;
  final VoidCallback? onTap;
  final bool isEnable;
  final bool isSmall;
  final bool isFullWidth;
  final double? width;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isEnable) onTap!();
      },
      child: Container(
        height: isSmall ? 34 : 49,
        width: isFullWidth ? double.infinity : width,
        decoration: BoxDecoration(
          color: isEnable ? backgroundColor : ColorTheme.neutral[200],
          borderRadius: BorderRadius.circular(isSmall ? 4 : 6),
        ),
        child: Center(
          child: Text(
            title,
            style: isSmall
                ? CustomTextTheme.caption.copyWith(
                    fontWeight: FontWeight.w600,
                    color: isEnable ? Colors.white : ColorTheme.neutral[500],
                  )
                : CustomTextTheme.paragraph1.copyWith(
                    fontWeight: FontWeight.w600,
                    color: isEnable ? Colors.white : ColorTheme.neutral[500],
                  ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
