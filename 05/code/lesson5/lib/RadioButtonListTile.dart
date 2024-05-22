import 'package:flutter/material.dart';

class RadioButtonListTile extends StatefulWidget {
  @override
  _RadioButtonListTileState createState() => _RadioButtonListTileState();
}

class _RadioButtonListTileState extends State<RadioButtonListTile> {
  String _selecionado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("RadioButtonListTile"),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          Text("Satisfeito com o produto? "),
          RadioListTile(
            title: Text("Sim"),
            value: "s",
            groupValue: _selecionado,
            onChanged: (String? escolha){
              setState(() {
                _selecionado = escolha!;
              });
            }
          ),
          RadioListTile(
              title: Text("Não"),
              value: "n",
              groupValue: _selecionado,
              onChanged: (String? escolha){
                setState(() {
                  _selecionado = escolha!;
                });
              }
          ),
          ElevatedButton(
            child: Text("Salvar"),  
            onPressed: (){
              print("Item Selecionado: " + _selecionado);
            },
          )
        ],
      ),
    ),
    );
  }
}