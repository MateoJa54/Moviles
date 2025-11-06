import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../presentation/bloc/calculadora_bloc.dart';
import '../../presentation/bloc/calculadora_evento.dart';
import '../../presentation/bloc/calculadora_estado.dart';
import '../../domain/casouso_calcular.dart';

class PaginaCalculadora extends StatelessWidget {
  const PaginaCalculadora({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CalculadoraBloc>();

    Widget boton(String t, VoidCallback onTap, {Color? bg}) => ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bg,
        padding: const EdgeInsets.symmetric(vertical: 18),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onTap,
      child: Text(
        t,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
        actions: [
          IconButton(
            tooltip: 'Limpiar historial',
            onPressed: () => bloc.add(LimpiarHistorialPresionado()),
            icon: const Icon(Icons.delete_sweep_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            BlocBuilder<CalculadoraBloc, EstadoCalculadora>(
              builder: (_, s) => Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  s.pantalla,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: s.hayError ? Colors.redAccent : Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: [
                    boton(
                      'C',
                      () => bloc.add(LimpiarPresionado()),
                      bg: Colors.grey[700],
                    ),
                    boton(
                      '.',
                      () => bloc.add(PuntoPresionado()),
                      bg: Colors.grey[700],
                    ),
                    boton(
                      '÷',
                      () => bloc.add(OperadorSeleccionado(Operador.division)),
                      bg: Colors.orange,
                    ),
                    const SizedBox.shrink(),
                    boton('7', () => bloc.add(DigitoPresionado('7'))),
                    boton('8', () => bloc.add(DigitoPresionado('8'))),
                    boton('9', () => bloc.add(DigitoPresionado('9'))),
                    boton(
                      '×',
                      () => bloc.add(
                        OperadorSeleccionado(Operador.multiplicacion),
                      ),
                      bg: Colors.orange,
                    ),
                    boton('4', () => bloc.add(DigitoPresionado('4'))),
                    boton('5', () => bloc.add(DigitoPresionado('5'))),
                    boton('6', () => bloc.add(DigitoPresionado('6'))),
                    boton(
                      '-',
                      () => bloc.add(OperadorSeleccionado(Operador.resta)),
                      bg: Colors.orange,
                    ),
                    boton('1', () => bloc.add(DigitoPresionado('1'))),
                    boton('2', () => bloc.add(DigitoPresionado('2'))),
                    boton('3', () => bloc.add(DigitoPresionado('3'))),
                    boton(
                      '+',
                      () => bloc.add(OperadorSeleccionado(Operador.suma)),
                      bg: Colors.orange,
                    ),
                    boton('0', () => bloc.add(DigitoPresionado('0'))),
                    const SizedBox.shrink(),
                    boton(
                      '=',
                      () => bloc.add(IgualPresionado()),
                      bg: Colors.orange,
                    ),
                    const SizedBox.shrink(),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 100,
              child: BlocBuilder<CalculadoraBloc, EstadoCalculadora>(
                builder: (_, s) => ListView.separated(
                  padding: const EdgeInsets.all(12),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => const SizedBox(width: 8),
                  itemCount: s.historial.length,
                  itemBuilder: (_, i) => Chip(label: Text(s.historial[i])),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
