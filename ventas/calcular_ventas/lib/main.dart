import 'package:flutter/material.dart';
import 'views/page_view.dart';
import 'views/resultado_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cálculo de Sueldo de Vendedor',
      //rutas
      initialRoute: '/',
      routes: {
        '/': (context) => PaginaView(),
        '/resultado': (context) => ResultadoView(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
