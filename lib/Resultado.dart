import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final score;
  final Function reset;

  Resultado({@required this.score, @required this.reset});

  String get frase {
    if (score < 3) return 'Ok né!';
    if (score < 6) return 'Mediano!';
    if (score < 11) return 'O mais brabo!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: Text(
          frase,
          style: TextStyle(fontSize: 28),
        )),
        FlatButton(
          onPressed: reset,
          child: Text('Reiniciar'),
          textColor: Colors.blue,
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
