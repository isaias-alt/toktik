import 'package:intl/intl.dart';

/// The HumanFormats class provides a method to format numbers into a human-readable format.
class HumanFormats {
  static String humanReadableNumbers(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formatterNumber;
  }
}
