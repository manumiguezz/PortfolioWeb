import 'dart:ui';
import 'package:flutter/material.dart';
import '../../exports/utils.dart';

class ParticleBackground extends StatelessWidget {
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

  const ParticleBackground({
    super.key,
    this.multiColor = true,
    this.particleColor = Colors.blue,
    this.backgroundColor = Colors.white,
    this.numberOfParticles = 200,
    this.blur = true,
    this.highestSpeed = 1,
    this.slowestSpeed = .2,
    this.biggestSize = 8,
    this.smallestSize = 3,
    this.blurIntensity = 5,
    this.allFilled = false,
  });

  @override
  Widget build(BuildContext context) {
    Configuration configuration = Configuration(
        multiColor: multiColor,
        particleColor: particleColor,
        backgroundColor: backgroundColor,
        numberOfParticles: numberOfParticles,
        blur: blur,
        slowestSpeed: slowestSpeed,
        highestSpeed: highestSpeed,
        biggestSize: biggestSize,
        smallestSize: smallestSize,
        blurIntensity: blurIntensity,
        allFilled: allFilled);
    return MyHomePage(configuration);
  }
}

class MyHomePage extends StatelessWidget {
  final Configuration configuration;

  const MyHomePage(this.configuration, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: configuration.backgroundColor,
              ),
            ),
            Scene(constraints.biggest, configuration),
            configuration.blur == true
                ? Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaY: configuration.blurIntensity.toDouble(),
                          sigmaX: configuration.blurIntensity.toDouble()),
                      child: Container(
                        color: Colors.black.withValues(alpha: 0),
                      ),
                    ),
                  )
                : Container(),
          ],
        );
      },
    );
  }
}
