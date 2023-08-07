import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Presentation(),

        SizedBox(height: 210,),

        AboutMe(),

      ],
    );
  }
}