import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
  final String texto;
  final void Function(String) onPressed;

  Resposta(this.texto, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(texto),
      child: Text(texto),
    );
  }
}

  