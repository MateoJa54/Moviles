enum Operador { suma, resta, multiplicacion, division }

/// Lógica de negocio pura: no conoce Flutter ni UI.
class CasoUsoCalcular {
  double call(double a, double b, Operador op) {
    switch (op) {
      case Operador.suma:
        return a + b;
      case Operador.resta:
        return a - b;
      case Operador.multiplicacion:
        return a * b;
      case Operador.division:
        if (b == 0) throw ArgumentError('División por cero');
        return a / b;
    }
  }
}
