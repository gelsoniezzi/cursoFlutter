import 'package:flutter/material.dart';
import 'package:expenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({super.key});

  final List<Transaction> _transactions;

  // Construtor
  const TransactionList(this._transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
              color: Colors.amber,
              width: double.infinity,
              child: 
                Column(
                  children: _transactions.map((tr) {
                    return Text("${tr.id}: ${tr.title} - R\$ ${tr.value}.");
                  }).toList(),
                ),            
              );
  }
}