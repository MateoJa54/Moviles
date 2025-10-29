import 'package:flutter/material.dart';
import 'pantallas/calcular_area.dart';

void main() => runApp(calcular_area());

class calcular_area extends StatelessWidget {
  //importar la clase AreaCalculator
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Terreno',
      theme: ThemeData(primaryColor: Colors.grey),
      //conexion
      home: CalcularAreaPage(), //llamar a la pagina
    );
  }
}
