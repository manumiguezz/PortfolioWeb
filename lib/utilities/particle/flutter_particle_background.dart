import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio_web_version/utilities/particle/exports.dart';

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

  const ParticleBackground({super.key, 
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

class MyHomePage extends StatefulWidget {
  final Configuration configuration;

  @override
  MyHomePageState createState() => MyHomePageState();

  const MyHomePage(this.configuration, {super.key});
}

class MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  Animation? _animation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 60));
    _animation =
        Tween<double>(begin: 0, end: 255).chain(CurveTween(curve: Curves.elasticOut)).animate(_animationController!)
          ..addListener(() {
            if (_animation!.isCompleted) _animationController!.repeat();
            setState(() {});
          });

    _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: widget.configuration.backgroundColor,
              ),
            ),
            Scene(constraints.biggest, widget.configuration),
            widget.configuration.blur == true
                ? Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaY: widget.configuration.blurIntensity.toDouble(),
                          sigmaX: widget.configuration.blurIntensity.toDouble()),
                      child: Container(
                        color: Colors.black.withOpacity(0),
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
