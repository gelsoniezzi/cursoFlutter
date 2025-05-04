import 'package:expenses_alone/components/transaction_user.dart';
import 'package:flutter/material.dart';



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

  

  
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("App de Despesas"), ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Card(child: Text("Gráfico"), elevation: 2.0,),            
            SizedBox(height: 8,),
            TransactionUser(),                    
          ],
        ),
      ),
    );
  }
}