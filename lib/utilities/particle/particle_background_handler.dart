import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio_web_version/utilities/particle/configuration.dart';
import 'package:portfolio_web_version/utilities/particle/particle_handler.dart';
import 'package:portfolio_web_version/utilities/particle/rnd.dart';
import 'particle.dart';

class ParticleBackgroundHandler extends ParticleHandler {
  ParticleBackgroundHandler(Size size, Configuration configuration) : super(size: size, configuration: configuration);

  @override
  void tick() {
    particles.asMap().forEach((i, p) {
      if (p.plusminus) {
        p.x += p.vx;
        p.y += p.vy;
      } else {
        p.x -= p.vx;
        p.y -= p.vy;
      }

      p.lifeLeft = p.lifeLeft - 1;

      if (p.lifeLeft < 400) {
        p.size -= p.size * .0035;
      }

      if (p.lifeLeft <= 0 || p.size <= .5) {
        resetParticle(i);
        _activateParticle(p);
      }
    });
  }

  void _activateParticle(Particle p) {
    if (configuration.allFilled) {
      p.isFilled = true;
    } else {
      p.isFilled = Rnd.getBool();
    }

    p.size = Rnd.getDouble(configuration.smallestSize.toDouble(), configuration.biggestSize.toDouble());

    p.life = Rnd.getDouble(.5, .55);

    p.vx = sin(Rnd.getInt(-200, 200));
    p.vy = cos(Rnd.getInt(-200, 200));

    p.plusminus = (Rnd.getBool());

    double v = Rnd.getDouble(configuration.slowestSpeed, configuration.highestSpeed);
    p.vx *= v;
    p.vy *= v;
  }
}
