import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool _selecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("SwitchButton"),
    ),
    body: Container(
      child: Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(16)),
          Text("Gmail: "),
          Switch(
              value: _selecionado,
              onChanged: (bool? valor){
                setState(() {
                  _selecionado = valor!;
                });
              }
          )
        ],
      ),
    ),
    );
  }
}