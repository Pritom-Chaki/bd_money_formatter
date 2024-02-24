import 'package:flutter/material.dart';
import 'package:bd_money_formatter/bd_money_formatter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BD Money Formatter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BD Money Formatter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
        title: Text(widget.title),
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
