import 'package:flutter/material.dart';

class GradientBorderWidget extends StatelessWidget {
  const GradientBorderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.transparent],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      width: 50,
    );
  }
}