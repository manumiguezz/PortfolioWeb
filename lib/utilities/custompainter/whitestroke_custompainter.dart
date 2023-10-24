import 'package:flutter/material.dart';

class WhiteStrokePainter extends CustomPainter {

  final bool mobileVersion;

  WhiteStrokePainter({super.repaint, required this.mobileVersion});

  @override
  void paint(Canvas canvas, Size size) {

    if (mobileVersion == true) {
      final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

      final path = Path();

      path.moveTo(0, size.height * 0.07);

      path.quadraticBezierTo(
        size.width * 0.20,
        size.height * 0.10,
        size.width * 0.45,
        size.height * 0.05,
      );

      path.quadraticBezierTo(
        size.width * 0.70,
        size.height * 0,
        size.width,
        size.height * 0.04,
      );

      path.lineTo(size.width, size.height * 0.89);

      path.quadraticBezierTo(
        size.width * 0.75,
        size.height * 0.85, 
        size.width * 0.445,
        size.height * 0.90, 
      );
      
      path.quadraticBezierTo(
        size.width * 0.22,
        size.height * 0.935, 
        size.width * 0,
        size.height * 0.90, 
      );
      
      path.lineTo(0, size.height * 0.12);

    canvas.drawPath(path, paint);
      
    } else {

    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill;

    final path = Path();

      path.moveTo(0, size.height * 0.12 );

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
}

  @override
  bool shouldRepaint(WhiteStrokePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(WhiteStrokePainter oldDelegate) => false;
}