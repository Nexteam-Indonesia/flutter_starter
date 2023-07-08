import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final bool isBack;
  final bool automaticallyImplyLeading;
  final bool centerTitle;

  const BaseAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.isBack = false,
    this.automaticallyImplyLeading = true,
    this.centerTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: AppStyles.text16PxBold.copyWith(
          color: Colors.black,
        ),
      ),
      leading: isBack
          ? AutoLeadingButton(
              builder: (context, leadingType, action) => InkWell(
                onTap: action,
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            )
          : null,
      centerTitle: centerTitle,
      backgroundColor: ColorTheme.white,
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
