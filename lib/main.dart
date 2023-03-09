import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaAPP());

class _PerguntaAppState extends State<PerguntaAPP> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual sua cor favorita?',
        'resposta': '',
      },
      {
        'texto': 'Qual seu animal favorito?',
        'resposta': '',
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Pergunta 1', _responder),
            Resposta('Pergunta 2', _responder),
            Resposta('Pergunta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaAPP extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
