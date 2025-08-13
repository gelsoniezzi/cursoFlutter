import 'package:desafio/components/foot_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olá mundo!"),
      ),
      body: Carrocel(),
    );
  }
}

class Carrocel extends StatefulWidget {
  const Carrocel({super.key});

  @override
  State<Carrocel> createState() => _CarrocelState();
}

class _CarrocelState extends State<Carrocel> {

  final totalPagesController = TextEditingController();
  final actualPageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Text("Sou um carrocel."),
                TextField(
                  controller: totalPagesController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Numero de paginas',
                  ),
                ),
                SizedBox(height: 16,),
                TextField(
                  controller: actualPageController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Pagina atual',
                  ),
                )
              ],
            )),
            FootNavigation(),
          ],
        ));
  }
}
