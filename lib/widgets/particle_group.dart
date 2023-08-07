import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

class ParticleGroup extends StatelessWidget {
  const ParticleGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomParticleBackground(),
    
        CustomParticleBackground(
          backgroundColor: Colors.transparent,
          blur: true,
          blurIntensity: 7,
          particleColor: Colors.white10,
          biggestSize: 1,
          numberOfParticles: 40,
          highestSpeed: 1.5,
          allFilled: true,
          smallestSize: 70,
        ),
          
        CustomParticleBackground(
          backgroundColor: Colors.transparent,
          blur: true,
          blurIntensity: 0,
          particleColor: Color.fromARGB(26, 42, 42, 42),
          biggestSize: 1,
          numberOfParticles: 10,
          highestSpeed: 2,
          allFilled: true,
          smallestSize: 70,
        ),
          
        CustomParticleBackground(
          backgroundColor: Colors.transparent,
          blur: true,
          blurIntensity: 0,
          particleColor: Color.fromARGB(96, 112, 112, 112),
          biggestSize: 1,
          numberOfParticles: 14,
          highestSpeed: 0.7,
          allFilled: true,
          smallestSize: 30,
        ),
      ],
    );
  }
}