import 'package:flutter/material.dart';
import './scheme_color.dart';
import './typography.dart';

class ThemeAppBar {
  static const AppBarTheme style = AppBarTheme(
    backgroundColor: ColorsApp.primary,
    centerTitle: true,
    elevation: 3, // Sombra leve
    titleTextStyle: TextStylesApp.heading2,
  );
}
