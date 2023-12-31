import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/utils.dart';

class ParticleHandler with ChangeNotifier {
  final List<Particle> particles;
  final Configuration configuration;
  final Size size;

  ParticleHandler({
    required this.size,
    required this.configuration,
  }) : particles = List.generate(
          configuration.numberOfParticles,
          (_) {
            Color color;
            if (configuration.multiColor) {
              color = PaletteColors.getRandomColor();
            } else {
              color = configuration.particleColor;
            }
            return Particle(color: color);
          },
        ) {
    for (var i = 0; i < particles.length; ++i) {
      resetParticle(i);
    }
  }

  double get width => size.width;
  double get height => size.height;

  Particle resetParticle(int i) {
    Particle p = particles[i];
    p.size = p.life = 0;
    p.lifeLeft = Rnd.getDouble(200, 500);
    p.x = Random().nextInt(width.toInt()).toDouble();
    p.y = Random().nextInt(height.toInt()).toDouble();
    return p;
  }

  void tick() {
    notifyListeners();
  }
}
