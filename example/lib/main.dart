import 'package:flutter/material.dart';
import 'package:bd_money_formatter/bd_money_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BD Money Formatter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('BD Money Formatter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('BD Money Formatter Example',
                style: style.copyWith(fontSize: 20)),
            const SizedBox(height: 20.0),
            const Divider(),
            Text('Integer: 2554413646 → ${2554413646.toBDMoney()}',
                style: style),
            const Divider(),
            Text('Decimal: 97865466.352 → ${97865466.352.toBDMoney()}',
                style: style),
            const Divider(),
            Text('Negative: -456978.32 → ${(-456978.32).toBDMoney()}',
                style: style),
            const Divider(),
            Text(
                'With Currency: ${BDMoneyFormatter(2554413646).result.amountWithCurrency}',
                style: style),
          ],
        ),
      ),
    );
  }
}
