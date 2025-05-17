import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                elevation: 2.0,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      const Text("Formulário"),
                      TextField(
                        controller: titleController,
                        decoration: const InputDecoration(labelText: "Título"),
                      ),
                      TextField(
                        controller: valueController,
                        decoration: const InputDecoration(labelText: "Valor"),
                      ),
                      const SizedBox(height: 16.0),
                      FilledButton(onPressed: () {
                        print("Titulo: ${titleController.text}");
                        print("Valor: ${valueController.text}");
                        //tratar o value
                        final double value = double.tryParse(valueController.text) ?? 0.0;
                        onSubmit(titleController.text, value);
                      }, 
                      child: const Text("Enviar")),
                          
                    ],
                  ),
                ),
              );
  }
}