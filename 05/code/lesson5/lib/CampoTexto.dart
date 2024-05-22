import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Digite um Valor: "
              ),
              style: TextStyle(
                fontSize: 30,
                color: Colors.red
              ),
              controller: _textEditingController,
              onChanged: (String texto){
                print("Texto digitado: " + texto);
              },
              onSubmitted: (String texto){
                print("Texto digitado: " + texto);
              },
              enabled: true,
              maxLength: 2,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(32),
            child: ElevatedButton(
              child: Text("Salvar"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              onPressed: (){
                print("texto digitado: " + _textEditingController.text);
              },
            ),
          )
        ],
      ),
    );
  }
}