import 'package:flutter/material.dart';

//definir la clase principal de widget (Stateful windget)

class CalcularAreaPage extends StatefulWidget {
  @override
  State<CalcularAreaPage> createState() => _CalcularAreaPageState();
}

//Define el estado del widget (toda la logica y datos necesarios)
class _CalcularAreaPageState extends State<CalcularAreaPage> {
  //Logica
  //declarar los controladores
  final baseCtrl = TextEditingController(); // mapeo de objetos
  final alturaCtrl = TextEditingController();

  //declarar variables para almacenar los resultados
  double area = 0.0;
  double perimetro = 0.0;
  double valor = 0.0;

  //metodo para calcular
  void calcular() {
    // convertir los texto ingresado a numeros
    final base =
        double.tryParse(baseCtrl.text) ?? 0.0; // si no es un numero asigna 0.0
    final altura = double.tryParse(alturaCtrl.text) ?? 0.0;

    setState(() {
      //actualizar los valores
      area = base * altura;
      perimetro = 2 * (base + altura);
      valor = area * 500;
    });
  }

  //diseño
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular Area y Perimetro'),
        centerTitle: true,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ), //titulo de la pantalla
      //estructura de la pantalla
      body: Padding(
        padding: const EdgeInsets.all(16.0), //margen para todos los lados
        child: Column(
          //Alear los elementros dentro de column
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // alinear a la izquierda
          //Elementos visuales dentro hijos
          children: [
            Text(
              'Ingrese las medidas del Terreno en metros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15), //espacio entre elementos
            // Cajas de texto
            TextField(
              controller: baseCtrl, //asociar el controlador
              keyboardType: TextInputType.number, //tipo de teclado
              decoration: InputDecoration(
                labelText: 'Base (m)',
                border: OutlineInputBorder(), //borde de la caja
              ),
            ),

            SizedBox(height: 15), //espacio entre elementos
            TextField(
              controller: alturaCtrl, //asociar el controlador
              keyboardType: TextInputType.number, //tipo de teclado
              decoration: InputDecoration(
                labelText: 'Altura (m)',
                border: OutlineInputBorder(), //borde de la caja
              ),
            ),

            SizedBox(height: 15), //espacio entre elementos
            ElevatedButton(
              onPressed: calcular, //llamar al metodo calcular
              child: Text('Calcular'),
            ),

            SizedBox(height: 15), //espacio entre elementos
            Text(
              'Area: ${area.toStringAsFixed(2)} m²',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Perimetro: ${perimetro.toStringAsFixed(2)} m',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Valor del Terreno: \$${valor.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
