// El tema define colores, estilos y fuentes para la app.
// Constante de tema
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color.fromARGB(255, 14, 168, 150),
    appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 236, 41, 236),
      titleTextStyle:GoogleFonts.lato(
        Color: const Color.fromARGB(255, 77, 77, 189),
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}