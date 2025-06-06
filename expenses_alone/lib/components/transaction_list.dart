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
              child: Column(
                children: transactions.map((d) {
                  return(
                    Card(
                      elevation: 2.0,
                      child: 
                        Container(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    d.title, style: const TextStyle(fontWeight: FontWeight.bold),),
                                  Text(
                                    DateFormat('dd/MM/yyyy HH:mm').format(d.date), style: const TextStyle(color: Colors.black45)),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                
                                decoration: const BoxDecoration(color: Color.fromARGB(255, 188, 188, 188), borderRadius: BorderRadius.all(Radius.circular(8))),
                                child: Text("R\$ ${d.value.toStringAsFixed(2)}"),
                                
                      
                              ),
                            ]
                          ),
                        ),
                    )
                  );
                }).toList(),
              ),
            );
  }
}