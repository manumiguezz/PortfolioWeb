import 'package:flutter/material.dart';
import 'package:personal_web/utilities/particle/flutter_particle_background.dart';

class CustomParticleBackground extends StatelessWidget {
  final double? height;
  final double? width;
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
  
  const CustomParticleBackground({
    super.key, 
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
    this.height, 
    this.width,
  });

  @override
  Widget build(BuildContext context) {

    final double pageHeight = MediaQuery.of(context).size.height; 
    final double pageWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height ?? pageHeight,
      width: width ?? pageWidth,

      child: ParticleBackground(

        backgroundColor: backgroundColor ?? Colors.transparent,
        particleColor: particleColor ?? const Color.fromARGB(66, 59, 59, 59),
        blur: blur ?? true,
        highestSpeed: highestSpeed ?? 0.4,
        multiColor: multiColor ?? false,
        numberOfParticles: numberOfParticles ?? 90,
        blurIntensity: blurIntensity ?? 15,
        allFilled: allFilled ?? true,
        smallestSize: smallestSize ?? 80,
        biggestSize: biggestSize ?? 10,
        slowestSpeed: 0.01,
      ),
    );
  }
}