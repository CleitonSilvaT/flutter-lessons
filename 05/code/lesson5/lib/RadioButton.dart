import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  @override
  _RadioButtonState createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String _selecionado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("RadioButton"),
    ),
    body: Container(
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(32),),
          Text("Masculino"),
          Radio(
              value: "m",
              groupValue: _selecionado,
              onChanged: (String? escolha){
                print("Resultado: " + escolha.toString());
                setState(() {
                  _selecionado = escolha!;
                });
              }
          ),
          Text("Feminino"),
          Radio(
              value: "f",
              groupValue: _selecionado,
              onChanged: (String? escolha){
                print("Resultado: " + escolha.toString());
                setState(() {
                  _selecionado = escolha!;
                });
              }
          )
        ],
      ),
    ),
    );
  }
}