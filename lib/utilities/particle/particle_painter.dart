import 'package:flutter/material.dart';
import '../../exports/utils.dart';

class ParticlePainter extends CustomPainter {
  ParticleHandler particleHandler;

  ParticlePainter({required this.particleHandler})
      : super(repaint: particleHandler);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    for (final p in particleHandler.particles) {
      var pos = Offset(p.x, p.y);

      paint
        ..color = p.color
        ..strokeWidth = p.size * .2
        ..style = p.isFilled ? PaintingStyle.fill : PaintingStyle.stroke;

      canvas.drawCircle(pos, p.size / 1.2, paint);
    }
  }

  @override
  bool shouldRepaint(ParticlePainter oldDelegate) {
    return oldDelegate.particleHandler != particleHandler;
  }
}
