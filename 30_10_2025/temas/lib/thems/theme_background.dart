import 'package:flutter/material.dart';
import './scheme_color.dart';

class BackgroundApp {
  static const BoxDecoration primaryGradient = BoxDecoration(
    // Fondo con degradado primario
    gradient: LinearGradient(
      colors: [ColorsApp.secondary, ColorsApp.accent],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  static const BoxDecoration backgroundWhite = BoxDecoration(
    // Fondo blanco simple
    color: Colors.white,
  );

  static const BoxDecoration backgroundGray = BoxDecoration(
    // Fondo gris claro
    color: Color(0xFFF5F5F5),
  );
}
