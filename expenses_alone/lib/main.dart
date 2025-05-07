// import 'package:expenses_alone/components/transaction_user.dart';
import 'package:flutter/material.dart';
import 'package:expenses_alone/models/transaction.dart';
import 'package:expenses_alone/components/transaction_form.dart';
import 'package:expenses_alone/components/transaction_list.dart';

import 'dart:math';

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Despesas App",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _openModalTransactionForm(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return TransactionForm(_addTransaction);   
      },
    );
  }

  final _despesas = [
    Transaction(id: "e1", title: "Tenis", value: 999.00, date:DateTime.now()),
    Transaction(id: "e2", title: "Agua", value: 49.00, date:DateTime.now()),
    Transaction(id: "e3", title: "Cuecas", value: 198.00, date:DateTime.now()),
    Transaction(id: "e4", title: "Camisa", value: 60.00, date:DateTime.now()),
    Transaction(id: "e5", title: "Perfume", value: 78.00, date:DateTime.now()),    
  ];

  _addTransaction(String title, double value) {
    // Instanciar uma transaction

    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title, 
      value: value,
      date: DateTime.now()
    );

    setState(() {
      _despesas.add(newTransaction);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App de Despesas"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        //padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Card(
                elevation: 2.0,
                child: Text("Gráfico"),
              ),
              const SizedBox(height: 8.0),
              TransactionList(_despesas),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openModalTransactionForm(context),
      ),
    );
  }
}
