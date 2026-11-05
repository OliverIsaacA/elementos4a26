import 'package:empty_app/screens/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //quita la etiqueta de debug
      home: Screen1(), //qué ventana se muestra al inicio
    );
  }
}