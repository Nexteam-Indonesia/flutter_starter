import 'package:intl/intl.dart';

class CurrencyUtils {
  static final currencyDefault =
      NumberFormat.simpleCurrency(locale: 'id_ID', decimalDigits: 0, name: "Rp");

  static String formatCurrency(dynamic value) {
    final parse = value is String ? double.tryParse(value) ?? 0 : value;
    return currencyDefault.format(parse.isNegative ? 0 : parse);
  }
}
