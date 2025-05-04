import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final void Function(String, double) onSubmit; //variável do tipo função que recebe dois parametros

  TransactionForm(this.onSubmit); //a função é recebida como parâmetro do construtor

  @override
  Widget build(BuildContext context) {
    return Container(              
              child: Card(                
                elevation: 3.0,
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    
                    children: <Widget>[
                      const Text("Cadastrar despesa",
                        style: TextStyle(
                          fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16,),
                      TextField(
                        // onChanged: (newValue) => title = newValue, // essa abordagem é valida para utilização com a variável title e value (que está comentada)
                        controller: titleController,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.clear),
                          border: OutlineInputBorder(),
                          labelText: "Descrição",
                          
                        ),
                      ),
                      const SizedBox(height: 16,),
                      TextField(
                        controller: valueController,
                        // onChanged: (newValue) => value = newValue, // essa abordagem é valida para utilização com a variável title e value (que está comentada)
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.clear),
                          prefixText: "R\$ ",
                          border: OutlineInputBorder(),
                          labelText: "Valor",
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0,16,0,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(onPressed: () {}, child: const Text("Limpar")),
                            FilledButton(onPressed: () {
                              final title = titleController.text;
                              final value = double.tryParse(valueController.text) ?? 0.0; // pega-se as informações do controller e as trata.
                              onSubmit(title, value); //executa a funcao que recebeu como parametro do construtor.
                            }, child: const Text("Cadastrar")),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}