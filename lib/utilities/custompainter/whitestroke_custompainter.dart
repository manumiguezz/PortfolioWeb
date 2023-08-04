
import 'package:flutter/material.dart';

class WhiterStrokePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {

    final paint = new Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = new Path();

      path.moveTo(0, size.height * 0.1);
      path.quadraticBezierTo(
        size.width * 0.08,
        size.height * 0.15,

        size.width * 0.3,
        size.height * 0.15,
      );
      path.quadraticBezierTo(
        size.width * 0.45,
        size.height * 0.15,

        size.width * 0.6,
        size.height * 0.1,
      );
      // path.quadraticBezierTo(
      //   size.width * 0.6,
      //   size.height * 0.1,

      //   size.width * 0.80,
      //   size.height * 0.01,
      // );
      path.quadraticBezierTo(
        size.width * 0.85,
        size.height * 0.01,
        
        size.width,
        size.height * 0.05,
      );
      path.lineTo(size.width, size.height);
      path.lineTo(0, size.height);
      path.lineTo(0, size.height * 0.8);

  canvas.drawPath(path, paint);
}


  @override
  bool shouldRepaint(WhiterStrokePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiterStrokePainter oldDelegate) => false;
}