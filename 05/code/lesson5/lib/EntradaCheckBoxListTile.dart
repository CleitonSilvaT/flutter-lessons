import 'package:flutter/material.dart';

class EntradaCheckBoxListTile extends StatefulWidget {
  @override
  _EntradaCheckBoxListTileState createState() => _EntradaCheckBoxListTileState();
}

class _EntradaCheckBoxListTileState extends State<EntradaCheckBoxListTile> {
  bool _leite = false;
  bool _pao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("CheckBoxListTile"),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          CheckboxListTile(
            title: Text("Leite"),
            secondary: Icon(Icons.add_box),
            value: _leite,
            onChanged: (bool? valor){
              setState(() {
                _leite = valor!;
              });
            },
          ),
          CheckboxListTile(
            title: Text("Pão"),
            secondary: Icon(Icons.add_box),
            value: _pao,
            onChanged: (bool? valor){
              setState(() {
                _pao = valor!;
              });
            },
          ),
          ElevatedButton(
              child: Text("Salvar"),
              onPressed: (){
                print(
                  " Leite: " + _leite.toString() +
                      " Pão: " + _pao.toString()
                );
              })
        ],
      ),
    ),
    );
  }
}