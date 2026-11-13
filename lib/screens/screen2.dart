import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 2',
        style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 251, 170, 255),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            mostrarImagen(1),
            SizedBox(width: 15),
            mostrarImagen(2),
            SizedBox(width: 15
            ),
            mostrarImagen(3),
          ],
        ),
      ),
    );
  }
}

Widget mostrarImagen(int numImagen){
  String nombreImagen = '';
  switch (numImagen) {
    case 1:
      nombreImagen = 'assets/imgs/dietdogo.jpg';
      break;
    case 2:
      nombreImagen = 'assets/imgs/pijamadogo.jpg';
      break;
    case 3:
      nombreImagen = 'assets/imgs/smalldogo.jpg';
      break;
  }
  return Image.asset(
    nombreImagen,
    width: 110,
    height: 110,
    fit: BoxFit.cover,
  );
}