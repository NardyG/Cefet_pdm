import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatelessWidget{
  void eventoBotao(){
    print("Clicou");
  }
  Widget build(BuildContext){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas e respostas!"),
        ),
        body: ElevatedButton(
          onPressed: eventoBotao,
          child: Text("Meu Botão"),)
          ,)
      );
  }
}