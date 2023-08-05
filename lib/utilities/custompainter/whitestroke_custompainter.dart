
import 'package:flutter/material.dart';

class WhiterStrokePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = Path();

      path.moveTo(0, size.height * 0.12);

      path.quadraticBezierTo(
        size.width * 0.24,
        size.height * 0.22,

        size.width * 0.55,
        size.height * 0.09,
      );

      path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0,

        size.width,
        size.height * 0.07,
      );
      

      path.lineTo(size.width, size.height * 0.90);

      path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.80, 
        size.width * 0.45,
        size.height * 0.9, 
      );

      path.quadraticBezierTo(
        size.width * 0.13,
        size.height * 1.00, 
        size.width * 0,
        size.height * 0.95, 
      );

      path.lineTo(0, size.height * 0.12);

  canvas.drawPath(path, paint);
}


  @override
  bool shouldRepaint(WhiterStrokePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiterStrokePainter oldDelegate) => false;
}