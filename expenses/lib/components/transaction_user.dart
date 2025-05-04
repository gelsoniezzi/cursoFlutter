import 'dart:collection';
import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  // const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();




}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = <Transaction>[
    Transaction(id: "t1", title: "Padaria", value: 10.0, ),
    Transaction(id: "t2", title: "Supermercado", value: 99.0, ),
    Transaction(id: "t3", title: "Casa", value: 220.0, ),
    ];

  void newTransaction(String title, double value){
    // é necessário 
    final newTransaction = new Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value);

      setState(() {
        _transactions.add(newTransaction);
      });
  }
    
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(newTransaction),
      ],
    );
  }
}