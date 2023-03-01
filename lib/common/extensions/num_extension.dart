import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

extension NumExtensionX on num {
  Duration get microseconds => Duration(microseconds: toInt());

  Duration get milliseconds => Duration(milliseconds: toInt());

  Duration get seconds => Duration(seconds: toInt());

  Duration get minutes => Duration(minutes: toInt());

  Duration get hours => Duration(hours: toInt());

  Duration get days => Duration(days: toInt());

  Future get delayedMicroSeconds async => Future.delayed(toInt().microseconds);

  Future get delayedMilliSeconds async => Future.delayed(toInt().milliseconds);

  Future get delayedSeconds async => Future.delayed(toInt().seconds);

  Future get delayedMinutes async => Future.delayed(toInt().minutes);

  Future get delayedHours async => Future.delayed(toInt().hours);

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
}
