// En un club deportivo local se cobran los siguientes precios como cuota, ingresando la edad de un socio, se debe informar cuanto debe pagar. 
// $20 a los socios activos (entre 21 y 50 años)
// $10 a los socios infantiles (menores de 16 años)
// $15 a los socios cadetes (entre 16 y 21 años)
// Gratis a los socios mayores de 50 años.
import 'dart:io';

void main() {
  // Ingreso de datos
  print('**********BIENVENIDO AL CLUB**********');
  stdout.write('Ingrese su nombre: \n');
  String nombre = stdin.readLineSync()!;
  stdout.write('Ingrese su edad: \n');
  int edad = int.parse(stdin.readLineSync()!);

  if (edad < 0) {
    print('Edad incorrecta. Por favor, ingrese una edad válida.');
  } else if (edad >= 0 && edad <= 15 ) {
    stdout.write('Sr/a. ${nombre} es un socio infantil\n');
    stdout.write('valor a pagar es: \$10\n');
  } else if (edad > 15 && edad <= 21) {
    stdout.write('Sr/a. ${nombre} es un socio cadete\n');
    stdout.write('El valor a pagar es: \$15\n');
  } else if (edad > 21 && edad <= 50) {
    stdout.write('Sr/a. ${nombre} es un socio activo\n');
    stdout.write('El valor a pagar es: \$20\n');
  } else if (edad > 50) {
    stdout.write('El valor a pagar es: \$0\n');
  }
}