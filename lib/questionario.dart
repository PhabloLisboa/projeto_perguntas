import 'package:flutter/cupertino.dart';
import 'package:projeto_perguntas/BtnResposta.dart';
import 'package:projeto_perguntas/questao.dart';

class Questionario extends StatelessWidget {
  final List perguntas;
  final int selected;
  final Function responder;

  Questionario({
    @required this.perguntas,
    @required this.selected,
    @required this.responder,
  });

  bool get selectedQuestion {
    return selected < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map> respostas =
        selectedQuestion ? perguntas[selected]['respostas'] : null;

    return Column(
      children: [
        Questao(perguntas[selected]['text']),
        ...respostas
            .map((e) => BtnResposta(
                text: e['text'], onPressed: () => responder(e['value'])))
            .toList()
      ],
    );
  }
}
