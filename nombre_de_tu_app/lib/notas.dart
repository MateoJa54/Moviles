// Ingresar 3 notas parciales (0 a 20).

// Calcular el promedio.

// Si el promedio es menor que 10 → “Reprobado”.

// Entre 10 y 13 → “Supletorio”.

// Entre 14 y 17 → “Aprobado”.

// Mayor a 17 → “Excelente”.

import 'dart:io';

void main() {
  print('**********BIENVENIDO AL SISTEMA ESCOLAR**********');
  stdout.write('Ingrese el nombre del estudiante: \n');
  String nombre = stdin.readLineSync()!;
  stdout.write('Ingrese la nota del primer parcial: \n');
  double n1 = double.parse(stdin.readLineSync()!);
  stdout.write('Ingrese la nota del segundo parcial: \n');  
  double n2 = double.parse(stdin.readLineSync()!);
  stdout.write('Ingrese la nota del tercer parcial: \n');
  double n3 = double.parse(stdin.readLineSync()!);

  if (n1 < 0 || n1 > 20 || n2 < 0 || n2 > 20 || n3 < 0 || n3 > 20) {
    print('Error: Las notas deben estar entre 0 y 20.');
    return;
  }else {
    double promedio = (n1 + n2 + n3) / 3;
    print('El estudiante ${nombre} tiene las siguientes notas:');
    print('Nota 1: ${n1}');
    print('Nota 2: ${n2}');
    print('Nota 3: ${n3}');
    print('El promedio es: ${promedio.toStringAsFixed(2)}');
    if (promedio < 10) {
      print('Estado: Reprobado');
    } else if (promedio >= 10 && promedio <= 13) {
      print('Estado: Supletorio');
    } else if (promedio >= 14 && promedio <= 17) {
      print('Estado: Aprobado');
    } else if (promedio > 17) {
      print('Estado: Excelente');
    }
  }
  
}