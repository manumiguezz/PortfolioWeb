import 'package:flutter/material.dart';

class WhiteFlagUpMobile extends CustomPainter {

  WhiteFlagUpMobile({super.repaint});

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = Path();

      path.moveTo(0, size.height * 0.6 );

      path.quadraticBezierTo(
        size.width * 0.24,
        size.height * 0.82,

        size.width * 0.49,
        size.height * 0.55,
      );

      path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.25,

        size.width,
        size.height * 0.55,
      );
      
      path.lineTo(size.width, size.height);

      path.lineTo(0, size.height);


  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(WhiteFlagUpMobile oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiteFlagUpMobile oldDelegate) => false;
}