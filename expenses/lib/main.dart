import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';


main () => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  // const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _transactions = <Transaction>[
    Transaction(id: "t1", title: "Padaria", value: 10.0, ),
    Transaction(id: "t2", title: "Supermercado", value: 99.0, ),
    Transaction(id: "t3", title: "Casa", value: 220.0, ),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses App"),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: 
                Card(
                  child: Text("Gráfico"),
                  elevation: 5.0,
                  ),
              ),
              TransactionList(_transactions),
              TransactionForm(),
            
          ],
        ),
      ),
    );
  }
}