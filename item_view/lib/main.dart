import 'package:flutter/material.dart';
import 'telas/tela_principal.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'Lista de Itens',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TelaPrincipal(),
    );
  }
}