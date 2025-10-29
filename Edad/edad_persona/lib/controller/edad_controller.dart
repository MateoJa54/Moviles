import '../model/edad_model.dart';

class EdadController {
  String procesar(String d, String m, String a) {
    // Validar
    if (d.isEmpty || m.isEmpty || a.isEmpty) {
      // isEmpty verifica si la cadena está vacía
      return 'Error: Todos los campos son obligatorios.';
    }

    final dia = int.tryParse(d);
    final mes = int.tryParse(m);
    final anio = int.tryParse(a);

    //Validacion para ingresar numeros validos
    if (dia == null || mes == null || anio == null) {
      return 'Error: Por favor ingrese números válidos.';
    }

    // Validar fechas validas
    if (dia <= 0 || dia > 31 || mes <= 0 || mes > 12 || anio <= 0) {
      return 'Error: Fecha inválida.';
    }

    final r = EdadModel.calcularEdad(dia, mes, anio);
    //interpolacion de cadenas
    return 'Tienes ${r['anios']} años, ${r['meses']} meses y ${r['dias']} días.';
  }
}
