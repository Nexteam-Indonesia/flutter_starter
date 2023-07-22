import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class BackRoundButton extends StatelessWidget {
  const BackRoundButton({
    Key? key,
    this.onTap,
    required this.icon,
    this.color = Colors.black,
    this.size = 40,
    this.radius = 8,
  }) : super(key: key);

  final VoidCallback? onTap;
  final IconData icon;
  final Color color;
  final double size;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: onTap != null ? ColorTheme.white : Colors.grey.shade200,
          border: Border.all(
            color: ColorTheme.neutral[400]!,
            width: 1,
          ),
        ),
        child: Icon(
          size: size * .6,
          icon,
          color: onTap != null ? color : Colors.grey.shade600,
        ),
      ),
    );
  }
}
