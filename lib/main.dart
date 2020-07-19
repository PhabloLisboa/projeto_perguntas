import 'package:flutter/material.dart';
import './questao.dart';
main() {
  runApp(MainApp());
}

class _MainAppState extends State<MainApp> {
  var selelcted = 0;
  final _pergutas = ["Biscoito ou Bolacha?", "Que dia é hoje?"];

  void _responder() {
    if (selelcted < _pergutas.length - 1)
      setState(() => selelcted++);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_pergutas[selelcted]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _responder,
            ),
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  _MainAppState createState() => _MainAppState();
}
