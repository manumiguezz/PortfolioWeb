import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Presentation(),

        SizedBox(height: 235,),

        AboutMe(),

        SizedBox(height: 350,),

        MyStack(),

        SizedBox(height: 190),

        ProjectSection(),

        SizedBox(height: 200,),

        LastInfo(),

      ],
    );
  }
}

