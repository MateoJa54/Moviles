
import 'dart:io';

void main() {
  //ingreso de datos
stdout.write('Ingrese su peso en kg: \n');
double peso = double.parse(stdin.readLineSync()!);
double costo = 72.70;
double subtotal = peso * costo;
double total= 0;

if (peso <= 0) {
  print('El peso debe ser un numero positivo mayor a cero');
} else if (peso >=2 && peso <= 5) {
  total = subtotal * 0.90;
} else if (peso > 5 && peso <= 10) {
  total = subtotal * 0.85;
} else if (peso > 10) {
  total = subtotal * 0.80;
}
print('El peso ingresado es:   ${peso} kg');
print('El subtotal es:  \$${subtotal.toStringAsFixed(2)}');
if (peso > 2) {
print('Descuento que aplica: ${((1 - (total / subtotal)) * 100).toStringAsFixed(2)} %');

print('El total a pagar es: \$${total.toStringAsFixed(2)}');
} else {
print('Descuento que aplica: 0 %');

print('El total a pagar es: \$${subtotal.toStringAsFixed(2)}');
}
}