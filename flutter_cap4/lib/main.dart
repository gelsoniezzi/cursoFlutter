import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TutorialHome(),
    title: "Flutter tutorial",
    debugShowCheckedModeBanner: false,
  ));
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: "Menu de navegação",
        ),
        title: Text("Exemplo de título"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Buscar",
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Text('Ola mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: "Incrementar",
        child: Icon(Icons.add)
      ),
    );
  }
}
