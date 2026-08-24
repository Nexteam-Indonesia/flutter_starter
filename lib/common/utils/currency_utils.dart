import 'package:intl/intl.dart';

class CurrencyUtils {
  static final currencyDefault =
      NumberFormat.simpleCurrency(locale: 'id_ID', decimalDigits: 0, name: "Rp");

  static String formatCurrency(Object? value) {
    final parsed = switch (value) {
      String() => double.tryParse(value) ?? 0,
      num() => value,
      _ => 0,
    };
    return currencyDefault.format(parsed.isNegative ? 0 : parsed);
  }
}
