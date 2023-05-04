import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:next_starter/injection.dart';

import '../../presentation/routes/app_router.dart';
import '../../presentation/theme/theme.dart';
import '../widgets/loading_indicator_widget.dart';
import '../widgets/snack_bar_widget.dart';
import 'num_extension.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  AppRouter get route => locator<AppRouter>();

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  Size get size => MediaQuery.of(this).size;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  void hideLoading() {
    if (Navigator.of(this).canPop()) {
      Navigator.of(this).pop();
    }
  }

  void showLoadingIndicator({
    bool barrierDismissible = false,
    Color barrierColor = Colors.black54,
    String message = "Please wait",
  }) {
    showDialog(
      context: this,
      builder: (context) => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: LoadingIndicatorWidget(
            color: Colors.white,
            semanticsLabel: message,
          ),
        ),
      ),
    );
  }

  void showSnackbar({
    required String title,
    required String message,
    bool error = false,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: SnackbarWidget(
            title: title,
            message: message,
            error: error,
            textColor: ColorTheme.statusRed,
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: 10.rounded,
          ),
          backgroundColor: error ? ColorTheme.statusLightRed : ColorTheme.brandBackgroundLight,
          padding: EdgeInsets.zero,
          elevation: 0,
          duration: const Duration(seconds: 3),
          margin: EdgeInsets.all(20.r),
        ),
      );
  }

  void showSnackbarValidationError({
    required String title,
    required Map<String, dynamic> messages,
    bool error = false,
  }) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Column(
            children: [
              Text(title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  )),
              const SizedBox(height: 10),
              ...messages.entries.map(
                (e) => Text(
                  e.value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: 10.rounded,
          ),
          backgroundColor: error ? ColorTheme.statusLightRed : ColorTheme.brandBackgroundLight,
          padding: EdgeInsets.zero,
          elevation: 0,
          duration: const Duration(seconds: 3),
          margin: EdgeInsets.all(20.r),
        ),
      );
  }
}
