import 'package:intl/intl.dart';

class CurrencyUtils {
  static String formatCurrency(String value) {
    final formatCurrency = NumberFormat.simpleCurrency(
        locale: 'id_ID', decimalDigits: 0, name: "Rp ");
    return formatCurrency.format(double.tryParse(value));
  }
}
