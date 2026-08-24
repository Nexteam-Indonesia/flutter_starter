import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/currency_utils.dart';

extension NumExtensionX on num {
  Duration get microseconds => Duration(microseconds: toInt());

  Duration get milliseconds => Duration(milliseconds: toInt());

  Duration get seconds => Duration(seconds: toInt());

  Duration get minutes => Duration(minutes: toInt());

  Duration get hours => Duration(hours: toInt());

  Duration get days => Duration(days: toInt());

  Future<void> get delayedMicroSeconds async => Future<void>.delayed(toInt().microseconds);

  Future<void> get delayedMilliSeconds async => Future<void>.delayed(toInt().milliseconds);

  Future<void> get delayedSeconds async => Future<void>.delayed(toInt().seconds);

  Future<void> get delayedMinutes async => Future<void>.delayed(toInt().minutes);

  Future<void> get delayedHours async => Future<void>.delayed(toInt().hours);

  Radius get circular => Radius.circular(toDouble().r);

  BorderRadiusGeometry get rounded => BorderRadius.circular(toDouble().r);

  EdgeInsets get all => EdgeInsets.all(toDouble().r);

  EdgeInsets get allHalfV => EdgeInsets.symmetric(
        horizontal: toDouble().r,
        vertical: toDouble().r / 2,
      );

  EdgeInsets get allHalfH => EdgeInsets.symmetric(
        horizontal: toDouble().r / 2,
        vertical: toDouble().r,
      );

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble().w);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble().h);

  Iterable<int> get range => Iterable<int>.generate(toInt());
  bool get isEmpty => this == 0;

  String get getRandomString {
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final rnd = Random();
    return String.fromCharCodes(
      Iterable.generate(
        toInt(),
        (_) => chars.codeUnitAt(rnd.nextInt(chars.length)),
      ),
    );
  }
}

extension NumSafetyExtensionX on num? {
  bool get isEmpty => this == 0 || this == null;
}

extension IntExtensionX on int {
  String get currency => CurrencyUtils.formatCurrency(this);
}

extension IntExtensionXNullable on int? {
  String get currency => CurrencyUtils.formatCurrency(this ?? 0);
}
