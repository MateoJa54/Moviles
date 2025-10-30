import 'package:flutter/material.dart';
import './scheme_color.dart';
import './typography.dart';
import './theme_button.dart';
import './theme_form.dart';
import './theme_background.dart';
import './theme_appBar.dart';

class ThemeGeneral {
  static ThemeData ligth = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: ColorsApp.primary,
      secondary: ColorsApp.secondary,
      background: ColorsApp.background,
      error: ColorsApp.error,
    ),

    textTheme: TextTheme(
      headlineLarge: TextStylesApp.heading1,
      headlineMedium: TextStylesApp.heading2,
      bodyLarge: TextStylesApp.bodyText,
      bodySmall: TextStylesApp.caption,
    ),

    appBarTheme: ThemeAppBar.style,
    elevatedButtonTheme: ThemeButton.buttonPrimary,
    outlinedButtonTheme: ThemeButton.buttonSecondary,
    inputDecorationTheme: ThemeForm.TextField,
    scaffoldBackgroundColor: ColorsApp.background,
  );
}
