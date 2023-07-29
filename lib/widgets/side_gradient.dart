import 'package:flutter/material.dart';

class GradientBorderWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      width: 50, // Ancho del gradiente (ajústalo según tu preferencia)
    );
  }
}