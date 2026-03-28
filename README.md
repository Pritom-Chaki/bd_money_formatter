# bd_money_formatter

> A Dart package to format numbers into Bangladesh (BD) money format.

[![Package Version](https://img.shields.io/pub/v/bd_money_formatter?color=teal&style=plastic)](https://pub.dev/packages/bd_money_formatter "Published package version")
[![LICENSE](https://img.shields.io/badge/License-MIT-red.svg?style=plastic)](https://github.com/Pritom-Chaki/bd_money_formatter/blob/main/LICENSE "Project's LICENSE")
[![Last Commit](https://img.shields.io/github/last-commit/Pritom-Chaki/bd_money_formatter.svg?logo=github&style=plastic)](https://github.com/Pritom-Chaki/bd_money_formatter)

Bangladesh uses a unique number grouping system — the first group from the right has **3 digits**, and every subsequent group has **2 digits**:

| Input       | BD Format      | International Format |
|-------------|----------------|----------------------|
| 1234567     | 12,34,567      | 1,234,567            |
| 97865466.35 | 9,78,65,466.35 | 97,865,466.35        |

## Features

- Format any number to BD money format
- Currency symbol support (default: ৳)
- Supports `int` and `double` types
- Handles negative and decimal numbers
- Convenient `num` extension methods (`toBDMoney()`, `toBDMoneyWithCurrency()`)
- Pure Dart — works with Flutter, server-side Dart, and CLI apps

## Installation

Add the following to your `pubspec.yaml`:

run:

```bash
dart pub add bd_money_formatter
```

Then import:

```dart
import 'package:bd_money_formatter/bd_money_formatter.dart';
```

## Usage

### Using `BDMoneyFormatter` class

```dart
final formatter = BDMoneyFormatter(2554413646);
print(formatter.result.amount);             // 2,55,44,13,646
print(formatter.result.amountWithCurrency); // ৳ 2,55,44,13,646
print(formatter.result.originalValue);      // 2554413646

// Custom currency symbol
final custom = BDMoneyFormatter(1234567, currencySymbol: 'BDT');
print(custom.result.amountWithCurrency); // BDT 12,34,567

// Decimal numbers
print(BDMoneyFormatter(97865466.352).result.amount); // 9,78,65,466.352

// Negative numbers
print(BDMoneyFormatter(-456978.32).result.amount); // -4,56,978.32
```

### Using extension methods

```dart
print(1234567.toBDMoney());              // 12,34,567
print(1234567.toBDMoneyWithCurrency());  // ৳ 12,34,567
print(97865466.352.toBDMoney());         // 9,78,65,466.352
```

### Flutter example

```dart
Text('Amount: ${1234567.toBDMoney()}'),
Text('Price: ${BDMoneyFormatter(2554413646).result.amountWithCurrency}'),
```

## Example Render UI
<img src="https://raw.githubusercontent.com/Pritom-Chaki/bd_money_formatter/main/example/images/example_ss.png?raw=true">

[![Contact Me](https://www.pritom.me/assets/contact_me.gif?raw=true)](https://www.pritom.me/contact?source=pubget)

## Demo

For a complete example app, see the [example directory](https://github.com/Pritom-Chaki/bd_money_formatter/tree/main/example).

## Help

Found a bug? [Report it here.](https://github.com/Pritom-Chaki/bd_money_formatter/issues/new?assignees=&labels=&template=bug_report.md&title=)
Have a feature request? [Request it here.](https://github.com/Pritom-Chaki/bd_money_formatter/issues/new?assignees=&labels=&template=feature_request.md&title=)

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

## Contributions

Contributions are welcome! Feel free to open an issue or submit a pull request.

## Contributors
<img src="https://avatars.githubusercontent.com/u/44813407" width="60" alt="Masud99Rana">

[Masud Rana](https://github.com/Masud99Rana)

## License

Released under the [MIT License](LICENSE).
