import 'package:flutter/material.dart';
import 'thems/theme_general.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mateo',
      debugShowCheckedModeBanner: false,
      theme: ThemeGeneral.ligth,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tema Claro")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Título", style: Theme.of(context).textTheme.headlineLarge),
            Text(
              "Subtítulo",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "Texto cuerpo",
              style: Theme.of(context).textTheme.bodyLarge,
            ), //
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Botón primario"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Botón secundario"),
            ),
          ],
        ),
      ),
    );
  }
}
