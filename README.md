# bd_money_formatter

> `BDMoneyFormatter` is a [Flutter](https://flutter.io) package to formatting currencies according to the Bangladesh (BD) characteristics.
>
[![Package Version](https://img.shields.io/pub/v/http_mock_adapter?color=teal)](https://github.com/Pritom-Chaki/bd_money_formatter "Published package version")
[![Style: Lints](https://img.shields.io/badge/style-lints-teal.svg)](https://github.com/Pritom-Chaki/bd_money_formatter "Package linter helper")
[![Dart CI](https://github.com/Pritom-Chaki/bd_money_formatter/workflows/Dart%20CI/badge.svg?branch=main)](https://github.com/Pritom-Chaki/bd_money_formatter/actions?query=workflow%3A%22Dart+CI%22 "Dart CI workflow")
[![Publish Package](https://github.com/Pritom-Chaki/bd_money_formatter/workflows/Publish%20to%20pub.dev/badge.svg)](https://github.com/Pritom-Chaki/bd_money_formatter/actions/workflows/publish.yml "Publish Package workflow")
[![LICENSE](https://img.shields.io/badge/License-MIT-red.svg)](https://github.com/Pritom-Chaki/bd_money_formatter#License "Project's LICENSE section")
[![codecov](https://github.com/Pritom-Chaki/bd_money_formatter/branch/main/graph/badge.svg?token=7H1HPCGFJ6)](https://codecov.io/gh/lomsa-dev/http-mock-adapter)

[![last commit](https://img.shields.io/github/last-commit/Pritom-Chaki/bd_money_formatter.svg?logo=github&style=plastic)](https://github.com/Pritom-Chaki/bd_money_formatter) 


## **Features**

- Convert any Amount to BD Money format.
- Support all kind of Data Types.
- Suitable for al type of flutter applications.

## **Installation**

To use the 'Bangla Converter' Flutter package, follow these steps:

1. Add the following line to the dependencies section in your project's **`pubspec.yaml`** file:

```yaml
flutter pub add bd_money_formatter
```

2. Import the package in your Dart code:

```dart
import 'package:bd_money_formatter/bd_money_formatter.dart';
```
## **Usage**

### **BD Money Formatter**
To Format, use the **`BDMoneyFormatter(decimalAmount).result.amount`** method

```dart
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double amount = 2554413646;
  double decimalAmount = 97865466.352;
  double negativeDecimalAmount = -456978.32;
  BDMoneyFormatter output = BDMoneyFormatter(2554413646);
  final TextStyle _style = const TextStyle(
      color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("BD Money Formatter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'BD Money Formatter Example',
              style: _style.copyWith(fontSize: 20),
            ),
            Text(
              'It accept any kind of datatype',
              style: _style,
            ),
            const SizedBox(height: 20.0),
            const Divider(),
            Text(
              'You have enter amount: $amount',
              style: _style,
            ),
            Text(
              'Your output amount: ${output.result.amount}',
              style: _style,
            ),
            const Divider(),
            Text(
              'If Money is Decimal Number: $decimalAmount',
              style: _style,
            ),
            Text(
              'Your output amount: ${BDMoneyFormatter(decimalAmount).result.amount}',
              style: _style,
            ),
            const Divider(),
            Text(
              'If Money is Negative Decimal Number: $negativeDecimalAmount',
              style: _style,
            ),
            Text(
              'Your output amount: ${BDMoneyFormatter(negativeDecimalAmount).result.amount}',
              style: _style,
            ),
          ],
        ),
      ),
    );
  }
}

```
## **Example Render UI**
<img src="https://github.com/Pritom-Chaki/bd_money_formatter/blob/main/example/images/example_ss.png?raw=true">

## **Demo**

For more complete samples, you can grab it from the [example directory](https://github.com/Pritom-Chaki/bd_money_formatter/tree/main/example).
 
## **Help Me**

If you find some issues or bugs, please [report here.](https://github.com/Pritom-Chaki/bd_money_formatter/issues/new?assignees=&labels=&template=bug_report.md&title=) You can also help in [requesting new features here.](https://github.com/Pritom-Chaki/bd_money_formatter/issues/new?assignees=&labels=&template=feature_request.md&title=)

## **ChangeLog**

Are you curious about the changes that occur in each version? [See here for detailed informations](https://pub.dartlang.org/packages/bd_money_formatter#-changelog-tab-).

## **Contributions**

Contributions are welcome! If you encounter any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## **Contributors**
<img src="https://avatars.githubusercontent.com/u/44813407" width="60"  alt="Masud99Rana">

[Masud Rana](https://github.com/Masud99Rana)

## **License**

The 'BD Money Formatter' Flutter plugin is released under the **[MIT License](https://github.com/Pritom-Chaki/bd_money_formatter/blob/main/LICENSE)**.