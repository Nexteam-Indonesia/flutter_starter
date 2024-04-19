import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:next_starter/common/storage/storage.dart';
import 'package:next_starter/common/widgets/loading_indicator_widget.dart';
import 'package:next_starter/injection.dart';
import 'package:path/path.dart' as path;
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../presentation/theme/theme.dart';
import '../widgets/top_snackbar.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  GoRouter get route => GoRouter.of(this);

  void go(String location, {Object? extra}) {
    route.go(location, extra: extra);
  }

  popUntil(String path) {
    Navigator.popUntil(this, (state) => state.settings.name == path);
  }

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  Size get size => MediaQuery.of(this).size;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  Future<T?> showCustomDialog<T>({
    Widget? title,
    Widget? content,
    bool isPop = true,
  }) {
    if (isPop) hideLoading();
    return showDialog(
      context: this,
      builder: (context) => AlertDialog(
        title: title,
        content: content,
        actions: [
          ElevatedButton(
            onPressed: () {
              pop(true);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  Future<T?> showAlertDialog<T>({
    required String message,
    bool isPop = true,
  }) {
    if (isPop) hideLoading();
    return showDialog(
      context: this,
      builder: (context) => AlertDialog(
        content: Row(
          children: [
            Icon(Icons.info_outline, size: 20.r, color: AppCoreColor.error.main),
            10.horizontalSpaceRadius,
            Text(
              message,
              style: AppStyles.text14Px.copyWith(color: ColorTheme.neutral.shade600),
            ).expand(),
          ],
        ),
        actions: [
          SizedBox(
            height: 40.h,
            child: ElevatedButton(
              onPressed: () {
                pop(true);
              },
              child: const Text('OK'),
            ),
          ),
        ],
      ),
    );
  }

  Future<T?> showDownloadPrompt<T>(String url, String? name) async {
    final download = locator<StorageInterface>();
    final fileName = path.basename(name ?? path.basename(url));
    return showDialog(
      context: this,
      builder: (context) => AlertDialog(
        title: const Text("Unduh Berkas"),
        content: Text("Apakah anda ingin mengunduh berkas \"$name\"?"),
        actions: [
          Row(
            children: [
              OutlinedButton(
                onPressed: () {
                  pop();
                },
                child: const Text('Batal'),
              ).expand(),
              16.horizontalSpaceRadius,
              ElevatedButton(
                onPressed: () async {
                  pop();
                  showLoadingIndicator(message: 'Mengunduh File ...');
                  try {
                    await download.download(url, fileName: fileName);
                    showSnackbar(
                      message: 'Berkas berhasil diunduh, cek folder "Download/$fileName"',
                    );
                  } catch (e) {
                    showSnackbar(
                      message: 'Berkas berhasil diunduh, cek folder "Download/$fileName"',
                      error: true,
                    );
                  }
                },
                child: const Text('OK'),
              ).expand(),
            ],
          ),
        ],
      ),
    );
  }

  void hideLoading<T>([T? result]) {
    if (Navigator.of(this).canPop()) {
      pop(result);
    }
  }

  void showLoadingIndicator({
    bool barrierDismissible = false,
    Color barrierColor = Colors.black54,
    String message = "Tunggu sebentar...",
  }) {
    if (FocusScope.of(this).hasFocus) {
      FocusScope.of(this).unfocus();
    }
    showDialog(
      context: this,
      builder: (context) => PopScope(
        canPop: false,
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          content: Container(
            width: 150.w,
            height: 150.h,
            color: Colors.white,
            child: LoadingIndicatorWidget(
              color: ColorTheme.primary,
              semanticsLabel: message,
            ),
          ),
        ),
      ),
    );
  }

  void showSnackbar({
    required String message,
    bool error = false,
    bool isPop = true,
  }) {
    if (isPop) {
      hideLoading();
    }
    showTopSnackBar(
      Overlay.of(this),
      TopSnackBar(
        message: message,
        isSuccess: !error,
      ),
    );
  }

  void showSnackbarValidationError({
    String? title,
    required Map<String, dynamic> messages,
    bool error = true,
  }) {
    hideLoading();
    showTopSnackBar(
      Overlay.of(this),
      Material(
        color: !error ? Colors.green : Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 16,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Text(title ?? "Validasi Error",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(height: 10),
                ...messages.entries.map(
                  (e) => Text(
                    e.value is List ? e.value.last : e.value.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
