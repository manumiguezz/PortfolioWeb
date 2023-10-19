
import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [ 
        ParticleGroup(),
        WhiteFlagSection(),
      ],
    );
  }
}

