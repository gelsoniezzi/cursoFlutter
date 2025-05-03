import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  //const TransactionForm({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  //TransactionForm();

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
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.clear),
                          border: OutlineInputBorder(),
                          labelText: "Descrição",
                          
                        ),
                      ),
                      SizedBox(height: 16,),
                      TextField(
                        controller: valueController,
                        // onChanged: (newValue) => value = newValue, // essa abordagem é valida para utilização com a variável title e value (que está comentada)
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.clear),
                          prefixText: "R\$ ",
                          border: OutlineInputBorder(),
                          labelText: "Valor",
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0,16,0,0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            TextButton(onPressed: () {}, child: const Text("Limpar")),
                            FilledButton(onPressed: () {
                              print(titleController.text);
                              print(valueController.text);
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