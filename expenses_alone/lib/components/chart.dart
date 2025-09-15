import 'package:expenses_alone/components/chart_bar.dart';
import 'package:expenses_alone/models/transaction.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  // Construtor
  const Chart(this.recentTransaction, {super.key});

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );

      double totalSum = 0.0;

      // Função para calcular o valor total no dia weekDay

      for (var i = 0; i < recentTransaction.length; i++) {
        // comparar se a data da transação é a mesma da data weekDay

        bool sameDay = recentTransaction[i].date.day == weekDay.day;
        bool sameMonth = recentTransaction[i].date.month == weekDay.month;
        bool sameYear = recentTransaction[i].date.year == weekDay.year;

        if (sameDay && sameMonth && sameYear) {
          totalSum += recentTransaction[i].value;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay)[0],
        'value': totalSum,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    //groupedTransactions;
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Text("Gráfico"),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: groupedTransactions.map((tr) {
              return ChartBar(
                label: tr['day'] as String,
                valorTotal: tr['value'] as double,
                percentual: 0.5,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
