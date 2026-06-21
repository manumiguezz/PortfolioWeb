import 'package:flutter/material.dart';

class Configuration {
  final bool multiColor;
  final Color particleColor;
  final Color backgroundColor;
  final int numberOfParticles;
  final bool blur;
  final double highestSpeed;
  final double slowestSpeed;
  final int biggestSize;
  final int smallestSize;
  final bool allFilled;
  final int blurIntensity;

  Configuration(
      {required this.multiColor,
      required this.particleColor,
      required this.backgroundColor,
      required this.numberOfParticles,
      required this.blur,
      required this.highestSpeed,
      required this.slowestSpeed,
      required this.biggestSize,
      required this.smallestSize,
      required this.blurIntensity,
      required this.allFilled});

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Configuration &&
            other.multiColor == multiColor &&
            other.particleColor == particleColor &&
            other.backgroundColor == backgroundColor &&
            other.numberOfParticles == numberOfParticles &&
            other.blur == blur &&
            other.highestSpeed == highestSpeed &&
            other.slowestSpeed == slowestSpeed &&
            other.biggestSize == biggestSize &&
            other.smallestSize == smallestSize &&
            other.allFilled == allFilled &&
            other.blurIntensity == blurIntensity;
  }

  @override
  int get hashCode => Object.hash(
        multiColor,
        particleColor,
        backgroundColor,
        numberOfParticles,
        blur,
        highestSpeed,
        slowestSpeed,
        biggestSize,
        smallestSize,
        allFilled,
        blurIntensity,
      );
}
