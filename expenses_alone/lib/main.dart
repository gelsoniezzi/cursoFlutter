import 'package:expenses_alone/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main () =>  runApp(const ExpensesApp());


class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});  

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Despesas App",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  //Estava funcionando assim, o que está errado
  // 101. Usando TextField #02 - https://www.udemy.com/course/curso-flutter/learn/lecture/17953636#overview
  //String? title;
  //String? value;

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  final despesas = [
    Expense(id: "e1", title: "Tenis", value: 999.00, date: DateTime.now()),
    Expense(id: "e2", title: "Agua", value: 49.00, date: DateTime.now()),
    Expense(id: "e3", title: "Cuecas", value: 198.00, date: DateTime.now()),
    Expense(id: "e4", title: "Camisa", value: 60.00, date: DateTime.now()),
    Expense(id: "e5", title: "Perfume", value: 78.00, date: DateTime.now()),    
  ];
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("App de Despesas"), ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Card(child: Text("Gráfico"), elevation: 2.0,),
            Container(
              child: Column(
                children: despesas.map((d) {
                  return(
                    Card(
                      elevation: 2.0,
                      child: 
                        Container(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${d.title}", style: const TextStyle(fontWeight: FontWeight.bold),),
                                  Text(
                                    DateFormat('dd/MM/yyyy HH:mm').format(d.date), style: TextStyle(color: Colors.black45)),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                
                                decoration: BoxDecoration(color: const Color.fromARGB(255, 188, 188, 188), borderRadius: BorderRadius.all(Radius.circular(8))),
                                child: Text("R\$ ${d.value.toStringAsFixed(2)}"),
                                
        
                              ),
                            ]
                          ),
                        ),
                    )
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              
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
            ),
          ],
        ),
      ),
    );
  }
}