import 'package:flutter/material.dart';
import './scheme_color.dart';
import './typography.dart';

class ThemeForm {
  static final TextField = InputDecorationTheme(
    // Tema para campos de formulario
    filled: true, // Habilita el fondo relleno
    fillColor: ColorsApp.background,
    labelStyle: TextStylesApp.bodyText,
    prefixIconColor: ColorsApp.primary,
    enabledBorder: OutlineInputBorder(
      // Borde cuando el campo está habilitado
      borderSide: BorderSide(color: ColorsApp.border),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      // Borde cuando el campo está enfocado
      borderSide: BorderSide(color: ColorsApp.primary, width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
