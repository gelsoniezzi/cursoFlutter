import 'dart:math';

import 'package:flutter/material.dart';
import 'package:expenses_alone/models/transaction.dart';
import 'package:expenses_alone/components/transaction_form.dart';
import 'package:expenses_alone/components/transaction_list.dart';


class TransactionUser extends StatefulWidget {
  //const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _despesas = [
    Transaction(id: "e1", title: "Tenis", value: 999.00, date:DateTime.now()),
    Transaction(id: "e2", title: "Agua", value: 49.00, date:DateTime.now()),
    Transaction(id: "e3", title: "Cuecas", value: 198.00, date:DateTime.now()),
    //Transaction(id: "e4", title: "Camisa", value: 60.00, date:DateTime.now()),
    //Transaction(id: "e5", title: "Perfume", value: 78.00, date:DateTime.now()),    
  ];

  _addTransaction(String title, double value) {
    // Instanciar uma transaction

    final newTransaction = new Transaction(
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
    return Column(children: [
        TransactionList(_despesas),
        SizedBox(height: 16.0),
        TransactionForm(_addTransaction)
      ],
    );
  }
}