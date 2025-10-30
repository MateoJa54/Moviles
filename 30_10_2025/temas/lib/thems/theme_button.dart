import 'package:flutter/material.dart';
import './scheme_color.dart';
import './typography.dart';

class ThemeButton {
  static final buttonPrimary = ElevatedButtonThemeData(
    // Tema para botones elevados
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorsApp.primary,
      foregroundColor: ColorsApp.textSecondary,
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 32),
      textStyle: TextStylesApp.bodyText,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
  );

  static final buttonSecondary = OutlinedButtonThemeData(
    // Tema para botones delineados
    style: OutlinedButton.styleFrom(
      backgroundColor: ColorsApp.secondary,
      foregroundColor: ColorsApp.textPrimary,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 28),
      textStyle: TextStylesApp.bodyText,
      side: BorderSide(color: ColorsApp.border),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
  );
}
