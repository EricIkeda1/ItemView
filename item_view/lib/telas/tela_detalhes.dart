import 'package:flutter/material.dart';
import '../modelos/modelo_item.dart';

class TelaDetalhes extends StatelessWidget {
  final Item item;

  TelaDetalhes({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.titulo),
        backgroundColor: Color(0xFFB3E5FC),  
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);  
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.titulo,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFB3E5FC)),
            ),
            SizedBox(height: 20),
            Text(
              item.descricao,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
