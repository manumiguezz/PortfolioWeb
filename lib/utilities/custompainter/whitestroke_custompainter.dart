
import 'package:flutter/material.dart';

class WhiterStrokePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = Path();

      path.moveTo(0, size.height * 0.14);
      path.quadraticBezierTo(
        size.width * 0.24,
        size.height * 0.28,

        size.width * 0.65,
        size.height * 0.1,
      );

      
      path.quadraticBezierTo(
        size.width * 0.87,
        size.height * 0,

        size.width,
        size.height * 0.07,
      );
      

      path.lineTo(size.width, size.height * 0.86);

      path.quadraticBezierTo(
        size.width * 0.76,
        size.height * 0.75, 
        size.width * 0.45,
        size.height * 0.9, 
      );

      path.quadraticBezierTo(
        size.width * 0.13,
        size.height * 1.04, 
        size.width * 0,
        size.height * 0.9, 
      );

      path.lineTo(0, size.height * 0.14);

  canvas.drawPath(path, paint);
}


  @override
  bool shouldRepaint(WhiterStrokePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiterStrokePainter oldDelegate) => false;
}