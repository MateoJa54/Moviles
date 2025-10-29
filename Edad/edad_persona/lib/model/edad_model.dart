class EdadModel {
  static Map<String, int> calcularEdad(int diaNac, int mesNac, int anioNac) {
    final hoy = DateTime.now(); // Fecha actual

    int dia = hoy.day;
    int mes = hoy.month;
    int anio = hoy.year;

    // ajustar: si el dia actual es menor

    if (dia < diaNac) {
      dia += 30;
      mes -= 1;
    }

    // ajustar: si el mes actual es menor
    if (mes < mesNac) {
      mes += 12;
      anio -= 1;
    }

    // calcular la diferencia
    int dias = dia - diaNac;
    int meses = mes - mesNac;
    int anios = anio - anioNac;

    return {'dias': dias, 'meses': meses, 'anios': anios};
  }
}
