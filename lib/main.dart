import 'package:flutter/material.dart';
import './Resultado.dart';
import './questionario.dart';

main() {
  runApp(MainApp());
}

class _MainAppState extends State<MainApp> {
  var selected = 0;
  var score = 0;
  final List<Map<String, Object>> _perguntas = [
    {
      'text': "Sua cor favorita",
      'respostas': [
        {'text': 'Azul', 'value': 1},
        {'text': 'Amarelo', 'value': 2},
        {'text': 'Cinza', 'value': 3},
        {'text': 'Outra', 'value': 4},
      ]
    },
    {
      'text': "Gêneto literário favorito",
      'respostas': [
        {'text': 'Comédia', 'value': 1},
        {'text': 'Romance', 'value': 2},
        {'text': 'Terror', 'value': 3},
        {'text': 'Outro', 'value': 4},
      ]
    },
  ];

  bool get selectedQuestion {
    return selected < _perguntas.length;
  }

  Widget build(BuildContext context) {
    void _responder(int point) {
      if (selectedQuestion) setState(() => selected++);
      setState(() => score += point);
    }

    void _reset() {
      setState(() {
        selected = 0;
        score = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: selectedQuestion
            ? Questionario(
                perguntas: _perguntas,
                selected: selected,
                responder: _responder)
            : Resultado(
                score: score,
                reset: _reset,
              ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  _MainAppState createState() => _MainAppState();
}
