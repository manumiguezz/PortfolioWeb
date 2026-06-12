import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/widgets.dart';

class ParticleLayerConfig {
  final Color? backgroundColor;
  final Color? particleColor;
  final bool? multiColor;
  final bool? blur;
  final int? blurIntensity;
  final int? numberOfParticles;
  final bool? allFilled;
  final int? smallestSize;
  final int? biggestSize;
  final double? slowestSpeed;
  final double? highestSpeed;

  const ParticleLayerConfig({
    this.backgroundColor,
    this.particleColor,
    this.multiColor,
    this.blur,
    this.blurIntensity,
    this.numberOfParticles,
    this.allFilled,
    this.smallestSize,
    this.biggestSize,
    this.slowestSpeed,
    this.highestSpeed,
  });
}

const List<ParticleLayerConfig> heroParticlesConfig = [
  ParticleLayerConfig(
    particleColor: Color.fromARGB(255, 28, 28, 28),
  ),
  ParticleLayerConfig(
    backgroundColor: Colors.transparent,
    blur: true,
    blurIntensity: 7,
    particleColor: Color.fromARGB(255, 21, 21, 21),
    biggestSize: 1,
    numberOfParticles: 40,
    highestSpeed: 1.5,
    allFilled: true,
    smallestSize: 70,
  ),
  ParticleLayerConfig(
    backgroundColor: Colors.transparent,
    blur: true,
    blurIntensity: 2,
    particleColor: Color.fromARGB(210, 34, 34, 34),
    biggestSize: 1,
    numberOfParticles: 10,
    highestSpeed: 2,
    allFilled: true,
    smallestSize: 70,
  ),
  ParticleLayerConfig(
    backgroundColor: Colors.transparent,
    blur: true,
    blurIntensity: 0,
    particleColor: Color.fromARGB(255, 50, 50, 50),
    biggestSize: 1,
    numberOfParticles: 14,
    highestSpeed: 0.7,
    allFilled: true,
    smallestSize: 30,
  ),
];

class ParticleGroup extends StatelessWidget {
  const ParticleGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: heroParticlesConfig
          .map(
            (config) => CustomParticleBackground(
              backgroundColor: config.backgroundColor,
              particleColor: config.particleColor,
              multiColor: config.multiColor,
              blur: config.blur,
              blurIntensity: config.blurIntensity,
              numberOfParticles: config.numberOfParticles,
              allFilled: config.allFilled,
              smallestSize: config.smallestSize,
              biggestSize: config.biggestSize,
              slowestSpeed: config.slowestSpeed,
              highestSpeed: config.highestSpeed,
            ),
          )
          .toList(growable: false),
    );
  }
}
