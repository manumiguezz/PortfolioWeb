
import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {

    if (MediaQuery.of(context).size.width > 1300){
      
    } else if (MediaQuery.of(context).size.width > 1000){
      
    } else if (MediaQuery.of(context).size.width > 800){
      
    } else if (MediaQuery.of(context).size.width > 600){
      
    } else if (MediaQuery.of(context).size.width > 400){
      
    }

    return const Stack(
      children: [ 
        ParticleGroup(),
        WhiteFlagSection(),
      ],
    );
  }
}

