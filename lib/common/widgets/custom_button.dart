/*
 * Copyright (c) 2022.
 * Author: Agus Prayogi
 * Company: Nexteam
 */

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

import '../../presentation/theme/theme.dart';
import '../extensions/extensions.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = ColorTheme.primary,
    this.disabledColor = ColorTheme.textGrey,
    this.splashColor = ColorTheme.textGrey,
    this.labelStyle,
    this.textColor = ColorTheme.white,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 44,
    this.radius = 8,
    this.width,
  }) : children = [
          loading
              ? _ButtonLoading(
                  loadingColor: textColor,
                )
              : Text(
                  label,
                  style: labelStyle?.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor) ??
                      AppStyles.text16PxSemiBold.copyWith(
                          color: isDisabled
                              ? textColor.withOpacity(0.6)
                              : textColor),
                )
        ];

  CustomButton.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required Widget icon,
    this.backgroundColor = ColorTheme.primary,
    this.disabledColor = ColorTheme.textGrey,
    this.splashColor = ColorTheme.textGrey,
    this.labelStyle,
    this.textColor = ColorTheme.white,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 44,
    this.radius = 8,
    double gap = 8,
    bool rightIcon = false,
    this.width,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else ...[
            if (!rightIcon) ...[
              icon,
              gap.horizontalSpace,
            ],
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text16PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            ),
            if (rightIcon) ...[
              gap.horizontalSpace,
              icon,
            ],
          ]
        ];

  CustomButton.iconText({
    super.key,
    required this.label,
    required this.onPressed,
    required Widget icon,
    this.backgroundColor = ColorTheme.transparent,
    this.disabledColor = ColorTheme.transparent,
    this.splashColor = ColorTheme.textGrey,
    this.labelStyle,
    this.textColor = ColorTheme.primary,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 44,
    this.radius = 8,
    double gap = 8,
    bool rightIcon = false,
    this.width,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else ...[
            if (!rightIcon) ...[
              icon,
              gap.horizontalSpace,
            ],
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text16PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            ),
            if (rightIcon) ...[
              gap.horizontalSpace,
              icon,
            ],
          ]
        ];

  CustomButton.text({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = ColorTheme.transparent,
    this.disabledColor = ColorTheme.transparent,
    this.splashColor = ColorTheme.textGrey,
    this.labelStyle,
    this.textColor = ColorTheme.primary,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 44,
    this.radius = 8,
    this.width,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text16PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            )
        ];

  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color disabledColor;
  final Color splashColor;
  final Color textColor;
  final TextStyle? labelStyle;
  final bool loading;
  final bool isDisabled;
  final bool fullWidth;
  final double height;
  final double? width;
  final double radius;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isDisabled ? disabledColor : backgroundColor,
      borderRadius: radius.rounded,
      clipBehavior: Clip.antiAlias,
      type: MaterialType.button,
      child: InkWell(
        onTap: (isDisabled || loading) ? null : onPressed,
        splashColor: splashColor.withOpacity(0.4),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.linearToEaseOut,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          height: height.h,
          width: fullWidth ? null : width,
          child: Row(
            mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}

class _ButtonLoading extends StatelessWidget {
  const _ButtonLoading({
    this.loadingColor = ColorTheme.white,
  });

  final Color loadingColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 22.r,
      height: 22.r,
      child: CircularProgressIndicator.adaptive(
        backgroundColor: loadingColor,
        strokeWidth: 1.8,
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  CustomOutlinedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.borderColor = ColorTheme.primary,
    this.disabledColor = ColorTheme.textGrey,
    this.splashColor = ColorTheme.textGrey,
    this.labelStyle,
    this.textColor = ColorTheme.primary,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 44,
  }) : children = [
          Text(
            label,
            style: labelStyle?.copyWith(
                    color:
                        isDisabled ? textColor.withOpacity(0.6) : textColor) ??
                AppStyles.text16PxSemiBold.copyWith(
                    color: isDisabled ? textColor.withOpacity(0.6) : textColor),
          )
        ];

  CustomOutlinedButton.icon({
    super.key,
    required this.label,
    required this.onPressed,
    required Widget icon,
    bool rightIcon = false,
    this.borderColor = ColorTheme.primary,
    this.disabledColor = ColorTheme.textGrey,
    this.splashColor = ColorTheme.textGrey,
    this.labelStyle,
    this.textColor = ColorTheme.primary,
    this.loading = false,
    this.isDisabled = true,
    this.fullWidth = false,
    this.height = 44,
    double gap = 8,
  }) : children = [
          if (loading)
            _ButtonLoading(
              loadingColor: textColor,
            )
          else ...[
            if (!rightIcon) ...[
              icon,
              gap.horizontalSpace,
            ],
            Text(
              label,
              style: labelStyle?.copyWith(
                      color: isDisabled
                          ? textColor.withOpacity(0.6)
                          : textColor) ??
                  AppStyles.text16PxSemiBold.copyWith(
                      color:
                          isDisabled ? textColor.withOpacity(0.6) : textColor),
            ),
            if (rightIcon) ...[
              gap.horizontalSpace,
              icon,
            ],
          ]
        ];

  final String label;
  final VoidCallback onPressed;
  final Color borderColor;
  final Color disabledColor;
  final Color splashColor;
  final Color textColor;
  final TextStyle? labelStyle;
  final bool loading;
  final bool isDisabled;
  final bool fullWidth;
  final double height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorTheme.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: 8.rounded,
        side: BorderSide(
          color: isDisabled ? disabledColor : borderColor,
          width: 1.r,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      type: MaterialType.button,
      child: InkWell(
        onTap: (isDisabled || loading) ? null : onPressed,
        splashColor: splashColor.withOpacity(0.4),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.linearToEaseOut,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          height: height.h,
          child: Row(
            mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
