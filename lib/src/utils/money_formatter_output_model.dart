/// Output model for [BDMoneyFormatter].
class MoneyFormatterOutput {
  /// The formatted amount string (e.g., "12,34,567").
  final String amount;

  /// The formatted amount with currency symbol (e.g., "৳ 12,34,567").
  final String amountWithCurrency;

  /// The original numeric value.
  final num originalValue;

  MoneyFormatterOutput({
    required this.amount,
    required this.amountWithCurrency,
    required this.originalValue,
  });

  @override
  String toString() => amount;
}
