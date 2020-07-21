import 'package:flutter/material.dart';
import './BtnResposta.dart';
import './questao.dart';

main() {
  runApp(MainApp());
}

class _MainAppState extends State<MainApp> {
  var selected = 0;
  Widget build(BuildContext context) {
    final List<Map<String, Object>> _perguntas = [
      {
        'text': "Sua cor favorita",
        'respostas': ['Azul', 'Amarelo', 'Cinza', 'Outra']
      },
      {
        'text': "Gêneto literário favorito",
        'respostas': ['Comédia', 'Romance', 'Terror', 'Outro']
      },
    ];

    void _responder() {
      if (selected < _perguntas.length - 1) setState(() => selected++);
      print(selected);
    }

    List<String> respostas = _perguntas[selected]['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(_perguntas[selected]['text']),
            ...respostas
                .map((e) => BtnResposta(text: e, onPressed: _responder))
                .toList()
          ],
        ),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  _MainAppState createState() => _MainAppState();
}
