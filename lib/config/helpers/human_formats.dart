import 'package:intl/intl.dart';

class HumanFormats {
  static String compactNumber(double number) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
      locale: 'en'
    ).format(number);

    return formattedNumber;
  }

  static String limitDecimals(double number, int decimals) {
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: decimals,
      symbol: ''
    ).format(number);

    return formattedNumber;
  }
}
