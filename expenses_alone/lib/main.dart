// import 'package:expenses_alone/components/transaction_user.dart';
import 'package:expenses_alone/components/chart.dart';
import 'package:flutter/material.dart';
import 'package:expenses_alone/models/transaction.dart';
import 'package:expenses_alone/components/transaction_form.dart';
import 'package:expenses_alone/components/transaction_list.dart';
import 'package:expenses_alone/mock/despesas.dart';

import 'dart:math';

void main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Despesas App",
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          
        ),
        
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // variáveis
  final _despesas = mock_despesas;

  // Funções

  _openModalTransactionForm(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return TransactionForm(_addTransaction);
      },
    );
  }

  _addTransaction(String title, double value) {
    // Instanciar uma transaction

    final newTransaction = Transaction(
        // cria uma nova transação
        id: Random()
            .nextDouble()
            .toString(), // atribui um valor randomico ao id
        title: title,
        value: value,
        date: DateTime.now());

    setState(() {
      // seta o estado para que aconteça a atualização dos componentes
      _despesas.add(newTransaction);
    });

    // fechar o modal
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("App de Despesas")),
        actions: <Widget>[
          IconButton(
            onPressed: () => _openModalTransactionForm(context),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
          alignment: Alignment.topCenter,
          
          margin: const EdgeInsets.all(8),
          //padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                
                children: <Widget>[
                  const Card(
                    elevation: 2.0,
                    child: Chart(),
                  ),
                  const SizedBox(height: 8.0),
                  TransactionList(_despesas),
                ],
              ),
            ),
          ),
        ),
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _openModalTransactionForm(context);
        },
      ),
    );
  }
}
