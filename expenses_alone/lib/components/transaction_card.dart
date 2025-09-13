import 'package:expenses_alone/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {

  final Transaction transaction;

  const TransactionCard(this.transaction, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return (Card(
                  elevation: 2.0,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transaction.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                DateFormat('dd/MM/yyyy HH:mm').format(transaction.date),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 218, 218, 218),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: Text("R\$ ${transaction.value.toStringAsFixed(2)}"),
                          ),
                        ]),
                  ),
                ));
  }
}