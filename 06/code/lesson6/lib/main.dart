import 'package:flutter/material.dart';
import 'package:lesson6/PrimeiraTela.dart';
import 'package:lesson6/SegundaTela.dart';

void main() {
  runApp(
      MaterialApp(
        initialRoute: "/",
        routes: {
          "/segunda": (context) => SegundaTela(),
        },
        home: PrimeiraTela()
  ));
}
