import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const new({super.key});

  final Map<String, String> perros = const {
    'Ginger': 'assets/imgs/mapache.jpg',
    'KC': 'assets/imgs/fox.jpg',
    'Blackie': 'assets/imgs/foxwhite.jpg',
    'Nicky': 'assets/imgs/cat.jpg',
    'John Wick': 'assets/imgs/dogueto.jpg',
    'Dobbie': 'assets/imgs/pijamadogo.jpg',
  };

  final Map<String, String> gatos = const {
    'Moji': 'assets/imgs/gato_chistoso.jpg',
    'Moka': 'assets/imgs/gato_chistoso_2.jpg',
    'Felix': 'assets/imgs/gato_chistoso_3.jpg',
    'Sisu': 'assets/imgs/gato_chistoso_4.jpg',
    'Pikachu': 'assets/imgs/gato_chistoso_5.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ventana 3'),),
      body: ListView(
        children: [
          ...perros.entries.map((perro){
            return _tileDog(
              perro.key, 
              perro.value, 
              Colors.blueAccent, 
              Colors.amberAccent, 
              Colors.white
            );
          }),
          Divider(),
          ...gatos.entries.map((gato){
            return _tileCat(
              gato.key, 
              gato.value, 
              const Color.fromARGB(255, 255, 157, 10), 
              const Color.fromARGB(255, 118, 22, 235), 
              Colors.white
            );
          }),
      ],
      ),
    );
  }

  Widget _tileDog(
    String dogName,
    String dogImage,
    Color tileColor,
    Color iconColor,
    Color textColor
  ){
    final tile = ListTile(
            leading: Image.asset(dogImage, width: 50, height: 50),
            title: Text(dogName),
            subtitle: Text('Un perro maravilloso'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: tileColor,
            iconColor: iconColor,
            textColor: textColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}

  Widget _tileCat(
    String catName,
    String catImage,
    Color tileColor,
    Color iconColor,
    Color textColor
  ){
    final tile = ListTile(
            title: Image.asset(catImage, width: 50, height: 50),
            leading: Icon(Icons.pets_rounded),
            subtitle: Text(catName),
            trailing: Icon(Icons.arrow_forward),
            tileColor: tileColor,
            iconColor: iconColor,
            textColor: textColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }