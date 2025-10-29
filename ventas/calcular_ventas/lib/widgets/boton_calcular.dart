import 'package:flutter/material.dart';

class BotonCalcular extends StatelessWidget {
  final VoidCallback onPressed;

  BotonCalcular({required this.onPressed}); //ver que es required

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text('Calcular Sueldo'));
  }
}
