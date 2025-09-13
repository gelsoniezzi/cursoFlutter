import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double valorTotal;
  final double percentual;

  const ChartBar(
      {required this.label,
      required this.valorTotal,
      required this.percentual,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("R\$${valorTotal.toStringAsFixed(2)}"),
        const SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: [],
          ),
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
