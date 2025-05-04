import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({super.key});

  List<Transaction> _transactions;

  // Construtor
  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
              color: Colors.amber,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: 
                Column(
                  children: _transactions.map((tr) {
                    return Text("${tr.id}: ${tr.title} - R\$ ${tr.value}.");
                  }).toList(),
                ),            
              );
  }
}