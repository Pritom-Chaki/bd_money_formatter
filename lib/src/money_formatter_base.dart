import 'package:bd_money_formatter/bd_money_formatter.dart';

/// Formats numbers into Bangladesh (BD) money format.
///
/// Bangladesh uses a unique grouping system:
/// - First group from the right has 3 digits
/// - Every subsequent group has 2 digits
///
/// Example: 1234567 → 12,34,567
class BDMoneyFormatter {
  /// The original numeric value.
  final num _amount;

  /// The currency symbol to use.
  final String currencySymbol;

  /// Returns compiled and formatted output.
  late final MoneyFormatterOutput result;

  /// Creates an instance of [BDMoneyFormatter].
  ///
  /// [amount] - the number to format (int or double).
  /// [currencySymbol] - optional currency symbol (defaults to "৳").
  BDMoneyFormatter(num amount, {this.currencySymbol = '৳'})
      : _amount = amount {
    result = _formatAmount();
  }

  /// Formats the amount into BD money format.
  MoneyFormatterOutput _formatAmount() {
    if (_amount == 0) {
      return MoneyFormatterOutput(
        amount: '0',
        amountWithCurrency: '$currencySymbol 0',
        originalValue: _amount,
      );
    }

    final bool isNegative = _amount < 0;
    final String fullString = _amount.abs().toString();
    final List<String> parts = fullString.split('.');
    String integerPart = parts[0];
    final String? decimalPart = parts.length > 1 ? parts[1] : null;

    String formatted = '';

    // First group: last 3 digits
    if (integerPart.length <= 3) {
      formatted = integerPart;
    } else {
      formatted = integerPart.substring(integerPart.length - 3);
      integerPart = integerPart.substring(0, integerPart.length - 3);

      // Subsequent groups: 2 digits each
      while (integerPart.length > 2) {
        formatted =
            '${integerPart.substring(integerPart.length - 2)},$formatted';
        integerPart = integerPart.substring(0, integerPart.length - 2);
      }

      if (integerPart.isNotEmpty) {
        formatted = '$integerPart,$formatted';
      }
    }

    // Append decimal part
    if (decimalPart != null) {
      formatted = '$formatted.$decimalPart';
    }

    // Handle negative
    if (isNegative) {
      formatted = '-$formatted';
    }

    return MoneyFormatterOutput(
      amount: formatted,
      amountWithCurrency: '$currencySymbol $formatted',
      originalValue: _amount,
    );
  }
}

/// Extension on [num] for convenient BD money formatting.
extension BDMoneyFormat on num {
  /// Formats this number into BD money format.
  ///
  /// Example:
  /// ```dart
  /// 1234567.toBDMoney() // "12,34,567"
  /// ```
  String toBDMoney({String currencySymbol = '৳'}) {
    return BDMoneyFormatter(this, currencySymbol: currencySymbol)
        .result
        .amount;
  }

  /// Formats this number into BD money format with currency symbol.
  ///
  /// Example:
  /// ```dart
  /// 1234567.toBDMoneyWithCurrency() // "৳ 12,34,567"
  /// ```
  String toBDMoneyWithCurrency({String currencySymbol = '৳'}) {
    return BDMoneyFormatter(this, currencySymbol: currencySymbol)
        .result
        .amountWithCurrency;
  }
}
