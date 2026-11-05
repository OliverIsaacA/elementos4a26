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

  final cats = const[
    'Moji',
    'Moka',
    'Felix',
    'Sisu',
    'Pikachu',
    'Frenchie',
  ];

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
          ...cats.map((cat)=>ListTile(
            leading: Icon(Icons.pets_rounded),
            title: Text(cat),
            subtitle: Text('Gatito complicado'),
            trailing: Icon(Icons.arrow_forward),
            tileColor: Color.fromARGB(218, 254, 250, 149),
            iconColor: Color.fromARGB(255, 255, 157, 77),
            
          )
          ),
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
    );
    final espacio = SizedBox(height: 10);
    return Column(children: [tile, espacio]);
  }
}