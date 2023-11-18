import 'package:flutter/material.dart';

class WhiteFlagDownMobile extends CustomPainter {

  WhiteFlagDownMobile({super.repaint});

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = Path();

      path.lineTo(size.width, size.height * 0);
      
      path.lineTo(size.width, size.height * 0.4);

      path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.2,
        size.width * 0.5,
        size.height * 0.4, 
      );

      path.quadraticBezierTo(
        size.width * 0.13,
        size.height * 0.7, 
        size.width * 0,
        size.height * 0.4, 
      );

      path.lineTo(0, size.height * 1);

  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(WhiteFlagDownMobile oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiteFlagDownMobile oldDelegate) => false;
}