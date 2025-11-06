import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/casouso_calcular.dart';

import 'data/respositorio_historial.dart';
import 'presentation/bloc/calculadora_bloc.dart';
import 'presentation/pages/calculadora_page.dart';

void main() {
  final casoUso = CasoUsoCalcular();

  final repoHistorial = RepositorioHistorialEnMemoria();

  runApp(MiApp(casoUso: casoUso, repoHistorial: repoHistorial));
}

class MiApp extends StatelessWidget {
  final CasoUsoCalcular casoUso;
  final RepositorioHistorialEnMemoria? repoHistorial;

  const MiApp({super.key, required this.casoUso, this.repoHistorial});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.orange),
      home: BlocProvider(
        create: (_) =>
            CalculadoraBloc(calcular: casoUso, repoHistorial: repoHistorial),
        child: const PaginaCalculadora(),
      ),
    );
  }
}
