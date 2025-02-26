import 'package:flutter/material.dart';
import '../modelos/modelo_item.dart';
import 'tela_detalhes.dart';

class TelaPrincipal extends StatelessWidget {
  final List<Item> itens = [
    Item(titulo: 'Item 1', descricao: 'Descrição completa do Item 1'),
    Item(titulo: 'Item 2', descricao: 'Descrição completa do Item 2'),
    Item(titulo: 'Item 3', descricao: 'Descrição completa do Item 3'),
    Item(titulo: 'Item 4', descricao: 'Descrição completa do Item 4'),
    Item(titulo: 'Item 5', descricao: 'Descrição completa do Item 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Itens')),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itens[index].titulo),
            subtitle: Text(itens[index].descricao),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaDetalhes(item: itens[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}