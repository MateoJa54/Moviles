import 'package:flutter/material.dart';
import '../widgets/boton_calcular.dart';
import '../widgets/input_calcular.dart';
import '../controllers/vendedor_controller.dart';

class PaginaView extends StatefulWidget {
  //diferecia entre stateful y stateless

  @override
  State<PaginaView> createState() => _PaginaViewState();
}

class _PaginaViewState extends State<PaginaView> {
  final controller = VendedorController();
  final venta1ctrl = TextEditingController();
  final venta2ctrl = TextEditingController();
  final venta3ctrl = TextEditingController();

  void _calcular() {
    final resultado = controller.calcularSueldo(
      venta1ctrl.text,
      venta2ctrl.text,
      venta3ctrl.text,
    );

    Navigator.pushNamed(
      context,
      '/resultado',
      arguments: resultado,
    ); //navegar a otra pagina
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cálculo de Sueldo de Vendedor')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            InputVenta(controller: venta1ctrl, label: 'Venta 1'),
            SizedBox(height: 10),
            InputVenta(controller: venta2ctrl, label: 'Venta 2'),
            SizedBox(height: 10),
            InputVenta(controller: venta3ctrl, label: 'Venta 3'),
            SizedBox(height: 20),
            BotonCalcular(onPressed: _calcular),
          ],
        ),
      ),
    );
  }
}
