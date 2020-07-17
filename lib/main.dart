import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MainApp());
}

class MainAppState extends State<MainApp> {
  var selelcted = 0;
  final pergutas = ["Biscoito ou Bolacha?", "Que dia é hoje?"];

  void responder() {
    if (selelcted < pergutas.length - 1)
      setState(() => selelcted++);

    print(selelcted);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(pergutas[selelcted]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  MainAppState createState() => MainAppState();
}
