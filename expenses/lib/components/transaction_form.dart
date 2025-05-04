import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
                elevation: 2.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text("Formulário"),
                      TextField(
                        controller: titleController,
                        decoration: InputDecoration(labelText: "Título"),
                      ),
                      TextField(
                        controller: valueController,
                        decoration: InputDecoration(labelText: "Valor"),
                      ),
                      SizedBox(height: 16.0),
                      FilledButton(onPressed: () {
                        print("Titulo: ${titleController.text}");
                        print("Valor: ${valueController.text}");
                        //tratar o value
                        final double value = double.tryParse(valueController.text) ?? 0.0;
                        onSubmit(titleController.text, value);
                      }, 
                      child: Text("Enviar")),
                          
                    ],
                  ),
                ),
              );
  }
}