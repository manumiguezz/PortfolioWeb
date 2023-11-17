import 'package:flutter/material.dart';

class WhiteFlagDown extends CustomPainter {

  WhiteFlagDown({super.repaint});

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = Path();

      path.lineTo(size.width, size.height * 0);
      
      path.lineTo(size.width, size.height * 1);

      path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.25, 
        size.width * 0.45,
        size.height * 0.9, 
      );

      path.quadraticBezierTo(
        size.width * 0.13,
        size.height * 1.00, 
        size.width * 0,
        size.height * 0.95, 
      );

      path.lineTo(0, size.height * 1);

  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(WhiteFlagDown oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiteFlagDown oldDelegate) => false;
}