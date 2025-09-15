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
          
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            clipBehavior: Clip.hardEdge,
            child: OverflowBox(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.grey,
                        width: 1.0,
                        
                      ),
                      
                    ),
                  ),
                  FractionallySizedBox(
                    heightFactor: 0.5,
                    
                    child: Container(
                      decoration:
                          BoxDecoration(color: Theme.of(context).primaryColor),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }
}
