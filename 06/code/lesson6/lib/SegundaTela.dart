import 'package:flutter/material.dart';
import 'package:lesson6/PrimeiraTela.dart';

class SegundaTela extends StatefulWidget{
  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda tela"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        // width: double.infinity,
        // color: Colors.yellow,
        padding: EdgeInsets.all(32),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Você está na segunda tela"),
            ElevatedButton(
              child: Text("Voltar para a primeira tela"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PrimeiraTela()
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}