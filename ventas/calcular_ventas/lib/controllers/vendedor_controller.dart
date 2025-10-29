import '../models/vendedor_model.dart';

class VendedorController {
  String calcularSueldo(String s1, String s2, String s3) {
    if (s1.isEmpty || s2.isEmpty || s3.isEmpty) {
      // Validar entradas vacías
      return 'Por favor ingrese todas las ventas';
    }

    final v1 = double.tryParse(s1);
    final v2 = double.tryParse(s2);
    final v3 = double.tryParse(s3);

    //Validar solo sean numeros
    if (v1 == null || v2 == null || v3 == null) {
      return 'Por favor ingrese valores numéricos válidos';
    }

    //
    final vendedor = VendedorModel(v1, v2, v3);
    final sueldo = vendedor.calcularSueldo();

    return 'Sueldo total: \$${sueldo.toStringAsFixed(2)}';
  }
}
