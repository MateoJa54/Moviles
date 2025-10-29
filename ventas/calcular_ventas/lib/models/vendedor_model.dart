class VendedorModel {
  final double venta1;
  final double venta2;
  final double venta3;

  VendedorModel(this.venta1, this.venta2, this.venta3);

  double calcularSueldo() {
    double totalVentas = venta1 + venta2 + venta3;
    double sueldoBase = 36500;
    double comision = totalVentas * 0.12;

    return sueldoBase + comision;
  }

  //funcion para añadir un impuesto
  double calcularImpuesto(double sueldo) {
    if (sueldo > 50000) {
      return sueldo * 0.10; 
    }
    return 0;
  }

}
