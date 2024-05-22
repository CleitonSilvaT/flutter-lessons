import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _selecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("CheckBox"),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          Text("Leite"),
          Checkbox(
              value: _selecionado,
              onChanged: (bool? valor){
                print("Valor do checkbox: " + valor.toString());
                setState(() {
                  _selecionado = valor!;
                });
              },
          )
        ],
      ),
    ),
    );
  }
}