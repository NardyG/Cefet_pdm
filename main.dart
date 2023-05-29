import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './resposta.dart';

main() {
  runApp(aula());
}

class aula extends StatefulWidget {
  @override
  State<aula> createState() => _aula();
}

class _aula extends State<aula> {
  var contador = 0;

  final perguntas = [
    "Qual a cor favorita?",
    "Comida favorita?",
    "Animal que mais gosta?",
    "O que faz nas horas vagas?"
  ];

  @override
  void clicou() {
    setState(() {
      contador = contador + 1;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas"),
        ),
        body: Column(
          children: [
            Text(perguntas[contador]),
            resposta(perguntas[contador]),
            ElevatedButton(onPressed: clicou, child: Text("opçao1")),
            ElevatedButton(onPressed: clicou, child: Text("opçao2")),
            ElevatedButton(onPressed: clicou, child: Text("opçao3")),
            ElevatedButton(onPressed: clicou, child: Text("opçao4")),
            NovoBotao(
              texto: "Novo Botão",
              acao: () {
                print("Clicou no Novo Botão!");
              },
            ),
          ],
        ),
      ),
    );
  }
}

resposta(String pergunta) {
}


class NovoBotao extends StatelessWidget {
  final String texto;
  final VoidCallback acao;

  const NovoBotao({Key? key, required this.texto, required this.acao})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: acao,
      child: Text(texto),
    );
  }
}