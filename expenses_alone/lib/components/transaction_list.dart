import 'package:expenses_alone/components/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:expenses_alone/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  //TransactionList({super.key});

  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: transactions.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            
              children: [
                const Text("Não há nada aqui."),
                Image.asset("assets/images/waiting.png", height: 320.0,)           
              ],
            )
          : Column(
              children: transactions.map((d) {
                return TransactionCard(d);
              }).toList(),
            ),
    );
  }
}
