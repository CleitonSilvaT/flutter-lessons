import 'package:flutter/material.dart';

class SwitchButtonListTile extends StatefulWidget {
  @override
  _SwitchButtonListTileState createState() => _SwitchButtonListTileState();
}

class _SwitchButtonListTileState extends State<SwitchButtonListTile> {
  bool _gmail = false;
  bool _whatsapp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("SwitchButton"),
    ),
    body: Container(
      child: Column(
        children: <Widget>[
          SwitchListTile(
            activeColor: Colors.red,
              title: Text("Gmail: "),
              value: _gmail,
              onChanged: (bool? valor){
                setState(() {
                  _gmail = valor!;
                });
              }
          ),
          SwitchListTile(
              title: Text("Whatsapp: "),
              value: _whatsapp,
              onChanged: (bool? valor){
                setState(() {
                  _whatsapp = valor!;
                });
              }
          ),
          ElevatedButton(
              child: Text("Salvar"),
              onPressed: (){
                if(_gmail){
                  print("Escolha: ativar gmail");
                }
                else {
                  print("Escolha: desativar gmail");
                }
                if(_whatsapp){
                  print("Escolha: ativar whatsapp");
                }
                else {
                  print("Escolha: desativar whatsapp");
                }
              })
        ],
      ),
    ),
    );
  }
}