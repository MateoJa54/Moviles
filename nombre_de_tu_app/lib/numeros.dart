// Crear un programa que ingrese 3 numeros y se muestre si se ingresaron en orden o no 
// - solicitar los numeros al usuario
// -verificar si estan en orden
// - Mostrar un mensaje indicando si estan en orden o no
import 'dart:io';
void main() {
  //ingreso de datos
  stdout.write('Ingrese el primer numero: \n');
  int n1 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el segundo numero: \n');
  int n2 = int.parse(stdin.readLineSync()!);

  stdout.write('Ingrese el tercer numero: \n');
  int n3 = int.parse(stdin.readLineSync()!);

  if(n1 <n2 && n2 < n3){
    print('Los numeros estan en orden creciente');
  } else {
    print('Los numeros no estan en orden');
  }
}