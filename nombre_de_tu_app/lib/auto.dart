import 'dart:io';

void main() {

  print('**********CÁLCULO DE GASTOS DE REMIS**********');

  stdout.write('Ingrese la cantidad de kilómetros a recorrer: ');
  double km = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el precio por litro de combustible: ');
  double precioCombustible = double.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el precio de un peaje: ');
  double precioPeaje = double.parse(stdin.readLineSync()!);

  double kmTotal = km * 2;

  double litros = kmTotal / 13;

  double costoCombustible = litros * precioCombustible;

  double costoPeaje = precioPeaje * 4;

  double costoExtra = 0;
  if (km > 400) {
    costoExtra = 50;
  }

  double total = costoCombustible + costoPeaje + costoExtra;

  print('\n**********RESULTADO**********');
  print('Kilómetros totales: $kmTotal km');
  print('Litros de combustible necesarios: $litros');
  print('Costo de combustible: \$${costoCombustible}');
  print('Costo de peajes: \$${costoPeaje}');
  print('Costo extra por demora: \$${costoExtra}');
  print('Gasto total del viaje (ida y vuelta): \$${total.toStringAsFixed(2)}');
}
