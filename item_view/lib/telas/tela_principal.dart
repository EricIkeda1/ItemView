import 'package:flutter/material.dart';
import '../modelos/modelo_item.dart';
import 'tela_detalhes.dart';

class TelaPrincipal extends StatelessWidget {
  final List<Item> itens = [
    Item(titulo: 'Item 1', descricao: 'Uma breve introdução ao Item 1.'),
    Item(titulo: 'Item 2', descricao: 'O Item 2 é interessante e possui várias funcionalidades.'),
    Item(titulo: 'Item 3', descricao: 'Descubra os detalhes incríveis do Item 3.'),
    Item(titulo: 'Item 4', descricao: 'Item 4 apresenta uma série de vantagens exclusivas.'),
    Item(titulo: 'Item 5', descricao: 'Conheça o Item 5, um dos mais populares.'),
    Item(titulo: 'Item 6', descricao: 'Item 6 possui recursos avançados e novidades.'),
    Item(titulo: 'Item 7', descricao: 'Item 7 é ideal para quem busca eficiência e praticidade.'),
    Item(titulo: 'Item 8', descricao: 'Aproveite os benefícios únicos do Item 8 para o seu dia a dia.'),
    Item(titulo: 'Item 9', descricao: 'Item 9 oferece uma experiência incomparável com funcionalidades exclusivas.'),
    Item(titulo: 'Item 10', descricao: 'Com o Item 10, você vai ter uma nova perspectiva sobre tecnologia.'),
  ];

  final List<Color> iconeCores = [
    Colors.blue,       
    Colors.red,       
    Colors.orange,      
    Colors.green,      
    Colors.brown,      
    Colors.yellow,    
    Colors.purple,    
    Colors.teal,      
    Colors.pink,    
    Colors.indigo,     
  ];

  final List<IconData> icones = [
    Icons.accessibility, 
    Icons.favorite, 
    Icons.star, 
    Icons.shop, 
    Icons.local_cafe, 
    Icons.lightbulb, 
    Icons.camera, 
    Icons.music_note, 
    Icons.home, 
    Icons.notifications,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Itens'),
        backgroundColor: Color(0xFFB3E5FC),
      ),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              title: Text(
                itens[index].titulo,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                itens[index].descricao,
                maxLines: 1, 
                overflow: TextOverflow.ellipsis,  
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              leading: Icon(
                icones[index],
                color: iconeCores[index], 
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaDetalhes(item: itens[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
