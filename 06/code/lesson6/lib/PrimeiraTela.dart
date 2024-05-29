import 'package:flutter/material.dart';
import 'package:lesson6/SegundaTela.dart';

class PrimeiraTela extends StatefulWidget{
  @override
  _PrimeiraTelaState createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<PrimeiraTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Tela"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                child: Text("Ir para segunda tela"),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SegundaTela()
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