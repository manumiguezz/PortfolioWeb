import 'package:flutter/material.dart';

class WhiteFlagUp extends CustomPainter {

  WhiteFlagUp({super.repaint});

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = Path();

      path.moveTo(0, size.height * 0 );

      path.quadraticBezierTo(
        size.width * 0.24,
        size.height * 0.82,

        size.width * 0.55,
        size.height * 0.1,
      );

      path.quadraticBezierTo(
        size.width * 0.75,
        size.height * - 0.3,

        size.width,
        size.height * 0.4,
      );
      
      path.lineTo(size.width, size.height);

      path.lineTo(0, size.height);


  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(WhiteFlagUp oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiteFlagUp oldDelegate) => false;
}