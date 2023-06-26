import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final List<String> respostasSelecionadas;

  Resultado(this.perguntas, this.respostasSelecionadas);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
      ),
      body: ListView.builder(
        itemCount: perguntas.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(perguntas[index]['texto'].toString()),
            subtitle: Text(respostasSelecionadas[index]),
          );
        },
      ),
    );
  }
}
