import 'package:flutter/material.dart';
import 'package:personal_web/widgets/custom_particle_background.dart';
import 'package:personal_web/widgets/widgets.dart';


class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [

        CustomParticleBackground(),

        SideVignette(),

        Presentation(),

      ],
    );
  }
}



