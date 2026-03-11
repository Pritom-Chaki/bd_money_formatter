import 'package:bd_money_formatter/bd_money_formatter.dart';
import 'package:test/test.dart';

void main() {
  group('BDMoneyFormatter', () {
    group('basic formatting', () {
      test('formats zero', () {
        final result = BDMoneyFormatter(0).result;
        expect(result.amount, '0');
      });

      test('formats single digit', () {
        expect(BDMoneyFormatter(5).result.amount, '5');
      });

      test('formats two digits', () {
        expect(BDMoneyFormatter(42).result.amount, '42');
      });

      test('formats three digits (no comma)', () {
        expect(BDMoneyFormatter(123).result.amount, '123');
      });

      test('formats four digits', () {
        expect(BDMoneyFormatter(1234).result.amount, '1,234');
      });

      test('formats five digits', () {
        expect(BDMoneyFormatter(12345).result.amount, '12,345');
      });

      test('formats six digits', () {
        expect(BDMoneyFormatter(123456).result.amount, '1,23,456');
      });

      test('formats seven digits', () {
        expect(BDMoneyFormatter(1234567).result.amount, '12,34,567');
      });

      test('formats eight digits', () {
        expect(BDMoneyFormatter(12345678).result.amount, '1,23,45,678');
      });

      test('formats large number', () {
        expect(
            BDMoneyFormatter(2554413646).result.amount, '2,55,44,13,646');
      });
    });

    group('decimal numbers', () {
      test('formats decimal number', () {
        expect(
            BDMoneyFormatter(97865466.352).result.amount, '9,78,65,466.352');
      });

      test('formats small decimal', () {
        expect(BDMoneyFormatter(1.5).result.amount, '1.5');
      });

      test('formats decimal with leading zero', () {
        expect(BDMoneyFormatter(0.99).result.amount, '0.99');
      });
    });

    group('negative numbers', () {
      test('formats negative integer', () {
        expect(BDMoneyFormatter(-1234567).result.amount, '-12,34,567');
      });

      test('formats negative decimal', () {
        expect(
            BDMoneyFormatter(-456978.32).result.amount, '-4,56,978.32');
      });

      test('formats negative small number', () {
        expect(BDMoneyFormatter(-5).result.amount, '-5');
      });
    });

    group('currency symbol', () {
      test('default currency symbol is ৳', () {
        expect(BDMoneyFormatter(1234).result.amountWithCurrency,
            '৳ 1,234');
      });

      test('custom currency symbol', () {
        expect(
            BDMoneyFormatter(1234, currencySymbol: 'BDT')
                .result
                .amountWithCurrency,
            'BDT 1,234');
      });

      test('currency with negative number', () {
        expect(BDMoneyFormatter(-1234).result.amountWithCurrency,
            '৳ -1,234');
      });
    });

    group('original value', () {
      test('preserves original int value', () {
        expect(BDMoneyFormatter(1234567).result.originalValue, 1234567);
      });

      test('preserves original double value', () {
        expect(
            BDMoneyFormatter(1234.56).result.originalValue, 1234.56);
      });
    });

    group('toString', () {
      test('toString returns formatted amount', () {
        expect(BDMoneyFormatter(1234567).result.toString(), '12,34,567');
      });
    });
  });

  group('BDMoneyFormat extension', () {
    test('toBDMoney on int', () {
      expect(1234567.toBDMoney(), '12,34,567');
    });

    test('toBDMoney on double', () {
      expect(97865466.352.toBDMoney(), '9,78,65,466.352');
    });

    test('toBDMoneyWithCurrency', () {
      expect(1234567.toBDMoneyWithCurrency(), '৳ 12,34,567');
    });

    test('toBDMoneyWithCurrency custom symbol', () {
      expect(1234567.toBDMoneyWithCurrency(currencySymbol: 'BDT'),
          'BDT 12,34,567');
    });
  });
}
