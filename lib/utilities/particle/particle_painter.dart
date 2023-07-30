import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_web/utilities/particle/exports.dart';

class ParticlePainter extends CustomPainter {
  ParticleHandler particleHandler;

  ParticlePainter({required this.particleHandler}) : super(repaint: particleHandler);

  @override
  void paint(Canvas canvas, Size size) {
 
    // ignore: avoid_function_literals_in_foreach_calls
    particleHandler.particles.forEach((p) {
      var pos = Offset(p.x, p.y);

      var paint = Paint()
        ..color = p.color
        ..strokeWidth = p.size * .2
        ..style = p.isFilled ? PaintingStyle.fill : PaintingStyle.stroke;

      if (p.isFilled) {
        canvas.drawCircle(pos, p.size / 1.2, paint);
      } else {
        canvas.drawCircle(pos, p.size / 1.2, paint);
      }
    });
  }

  @override
  bool shouldRepaint(ParticlePainter oldDelegate) {
    return false;
  }
}
