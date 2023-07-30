import 'package:flutter/material.dart';
import 'package:personal_web/utilities/particle/flutter_particle_background.dart';

class CustomParticleBackground extends StatelessWidget {
  const CustomParticleBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final double pageHeight = MediaQuery.of(context).size.height;
    final double pageWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: pageHeight,
      width: pageWidth,

      child: const ParticleBackground(
        backgroundColor: Colors.transparent,
        particleColor: Color.fromARGB(66, 59, 59, 59),
        blur: true,
        highestSpeed: 0.4,
        multiColor: false,
        numberOfParticles: 90,
        blurIntensity: 15,
        allFilled: true,
        smallestSize: 80,
      ),
    );
  }
}