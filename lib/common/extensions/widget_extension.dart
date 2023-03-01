import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';

extension WidgetExtensionX on Widget {
  SliverToBoxAdapter get toSliverBox => SliverToBoxAdapter(
        child: this,
      );

  SliverPadding sliverPadding(EdgeInsets insets) => SliverPadding(
        padding: insets,
        sliver: toSliverBox,
      );

  SizedBox sized({double? w, double? h}) => SizedBox(
        width: w,
        height: h,
        child: this,
      );

  Expanded expand({int flex = 1}) => Expanded(
        flex: flex,
        child: this,
      );

  SingleChildScrollView scrollVertical() => SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: this,
      );

  SingleChildScrollView scrollHorizontal() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: this,
      );

  Center center() => Center(
        child: this,
      );

  Padding pad(double pad) => Padding(
        padding: EdgeInsets.all(pad.r),
        child: this,
      );

  Padding px(double pad) => Padding(
        padding: EdgeInsets.symmetric(horizontal: pad.w),
        child: this,
      );

  Padding py(double pad) => Padding(
        padding: EdgeInsets.symmetric(vertical: pad.h),
        child: this,
      );
  Padding pOnly(
          {double left = 0,
          double top = 0,
          double right = 0,
          double bottom = 0}) =>
      Padding(
        padding: EdgeInsets.only(
            left: left.w, top: top.h, right: right.w, bottom: bottom.h),
        child: this,
      );
}
