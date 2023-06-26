import 'package:flutter/material.dart';

import './questionario.dart';
import './resposta.dart';
import './questao.dart';
import './resultado.dart';

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var perguntaAtual = 0;
  var cor = Colors.white;
  var respostasSelecionadas = <String>[]; // Lista de respostas selecionadas

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual a sua cor favorita?",
      "respostas": ["Amarelo", "Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto": "Qual é seu animal favorito?",
      "respostas": ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "texto": "Qual sua linguagem favorita?",
      "respostas": ["Python", "Java", "JavaScript"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < perguntas.length;
  }

  void acao(String resposta) {
    setState(() {
      respostasSelecionadas.add(resposta); // Adiciona a resposta selecionada à lista
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta
              ? Questao(perguntas[perguntaAtual]["texto"].toString())
              : Questao("Terminou"),
        ),
        body: temPergunta
            ? Questionario(
              perguntas: perguntas,
              perguntaAtual: perguntaAtual,
              onRespostaSelecionada: (String resposta) => acao(resposta),
      )
    : Resultado(perguntas, respostasSelecionadas), // Passa perguntas e respostasSelecionadas como argumentos

      ),
    );
  }
}
