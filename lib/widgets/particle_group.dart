import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class ParticleGroup extends StatelessWidget {
  const ParticleGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomParticleBackground(
          particleColor: Color.fromARGB(255, 28, 28, 28),
        ),
    
        CustomParticleBackground(
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
          
        CustomParticleBackground(
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
          
        CustomParticleBackground(
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
      ],
    );
  }
}