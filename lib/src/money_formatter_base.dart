import 'package:bd_money_formatter/bd_money_formatter.dart';

/// [BDMoneyFormatter] instance
class BDMoneyFormatter {
  dynamic amount;

  /// Returns compiled and formatted output in several formats.
  late MoneyFormatterOutput result;

  /// Init instance of [BDMoneyFormatter]
  ///
  /// [amount] required the number that will be formatted
  BDMoneyFormatter(this.amount) {
    result = _outputResult();
  }
  /// [_outputResult] method for all calculation
  MoneyFormatterOutput _outputResult() {
    if (amount != '' && amount != null) {
      amount = amount.toString();
      String permanentAmount = amount;
      if (double.parse(permanentAmount) < 0) {
        List<String> temp2 = amount.split('-');
        amount = temp2[1];
      }

      List<String> tmp = amount.split('.'); // for float or double values
      String strMoney = "";
      int divide = 1000;
      amount = tmp[0];

      if (amount.length >= 3) {
        if (amount.length == 3) {
          strMoney = '${amount.substring(amount.length - 3)}$strMoney';
        } else {
          strMoney = ',${amount.substring(amount.length - 3)}$strMoney';
        }

        amount = amount.substring(0, amount.length - 3);
      }

      while (amount.length > 2) {
        strMoney = ',${amount.substring(amount.length - 2)}$strMoney';
        amount = amount.substring(0, amount.length - 2);
      }

      strMoney = amount + strMoney;

      if (tmp.length > 1) {
        strMoney = '$strMoney.${tmp[1]}';
      }
      if (double.parse(permanentAmount) < 0) {
        strMoney = '-$strMoney';
      }

      return MoneyFormatterOutput(strMoney);
    } else {
      if (double.parse(amount) == 0) {
        return amount;
      } else {
        return amount;
      }
    }
  }
}
