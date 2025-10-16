// Se ingresan 3 valores por pantalla. El primero es la cantidad de kilómetros a recorrer con un remis. El segundo es el precio de un litro de combustible y el tercero es el precio del peaje.
// Se pide que realice un algoritmo que permita calcular el gasto para volver a cualquier lugar sabiendo que ...
// El auto consume 1 litro cada 13 km.
// La cantidad de peajes es 2 (con el mismo precio ambos ) hasta la llegada 
// Si la cantidad de kilómetros a recorrer es mayor a 400 km se debe sumar un gasto fijo de $50 por desgaste del vehículo.
import 'dart:io';

void main() {
print('**********INGRESE LOS DATOS**********');
stdout.write('Ingrese la cantidad de kilómetros a recorrer: \n');
double km = double.parse(stdin.readLineSync()!);
stdout.write('Ingrese el precio de un litro de combustible: \n');
double precioLitro = double.parse(stdin.readLineSync()!);
stdout.write('Ingrese precio del peaje: \n');
double peaje = double.parse(stdin.readLineSync()!);

double gastoTotal = 0.0;
// Cálculo del gasto 
double litrosConsumidos = km / 13;
double gastoCombustible = litrosConsumidos * precioLitro;

// Cálculo de más de 400 km 
if (km > 400) {
  gastoTotal = 50;
}

gastoTotal += (gastoCombustible + peaje*2)*2;

print('El gasto total del viaje (ida y vuelta) es: \$${gastoTotal.toStringAsFixed(2)}');
}