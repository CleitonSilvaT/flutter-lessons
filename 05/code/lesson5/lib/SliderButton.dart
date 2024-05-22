import 'package:flutter/material.dart';

class SliderButton extends StatefulWidget {
  @override
  _SliderButtonState createState() => _SliderButtonState();
}

class _SliderButtonState extends State<SliderButton> {
  double _valor = 0;
  String _label = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Slider"),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          Slider(
              value: _valor,
              min: 0,
              max: 100,
              label: _label,
              divisions: 10,
              onChanged: (double? novoValor){
                print("Valor selecionado: " + _valor.toString());
                setState(() {
                  _valor = novoValor!;
                  _label = "Seleção: " + novoValor.toString();
                });
              },
          ),
          ElevatedButton(
              child: Text("Salvar"),
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20)
              ),
              onPressed: (){
                print("Valor Salvo: " + _valor.toString());
              })
        ],
      ),
    ),
    );
  }
}