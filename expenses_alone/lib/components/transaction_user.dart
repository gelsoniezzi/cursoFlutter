import 'dart:math';

import 'package:flutter/material.dart';
import 'package:expenses_alone/models/transaction.dart';
import 'package:expenses_alone/components/transaction_form.dart';
import 'package:expenses_alone/components/transaction_list.dart';


class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  //const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  

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
    return Column(children: [
        
        
      ],
    );
  }
}