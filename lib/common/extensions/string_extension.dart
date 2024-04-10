import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/hex_color.dart';

extension StringX on String {
  bool get isEmail => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(this);

  bool get isPassword => length > 6;

  bool get isPhoneNumber => RegExp(r'^\d{10}$').hasMatch(this);

  Color get randColor {
    var r = Random(hashCode);
    const chars = '0123456789ABC';
    return HexColor('#${List.generate(6, (index) => chars[r.nextInt(chars.length)]).join()}');
  }
}
