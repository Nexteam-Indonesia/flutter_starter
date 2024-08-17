import 'dart:math';

import 'package:flutter/material.dart';
import 'package:next_starter/common/utils/currency_utils.dart';

import '../widgets/hex_color.dart';

extension StringX on String {
  bool get isEmail => RegExp(
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      .hasMatch(this);

  bool get isPassword => length > 6;

  bool get isPhoneNumber => RegExp(r'^\d{10}$').hasMatch(this);

  String get checkFound => isEmpty ? '-' : this;
  bool get isNullOrEmpty => isEmpty || this == '-';

  Color get randColor {
    var r = Random(hashCode);
    const chars = '0123456789ABC';
    return HexColor('#${List.generate(6, (index) => chars[r.nextInt(chars.length)]).join()}');
  }

  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get currency => CurrencyUtils.formatCurrency(this);
}

extension StringNullX on String? {
  String get checkFound => (this == null || this!.isEmpty) ? '-' : this!;
  bool get isNullOrEmpty => this == null || this!.isEmpty || this == '-';

  String get currency => this == null ? '-' : CurrencyUtils.formatCurrency(this);

  double get toDouble => this == null ? 0.0 : double.parse(this!);
}
