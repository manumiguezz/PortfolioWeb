import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class LargeSize extends StatelessWidget {
  const LargeSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Presentation(),

        Container(color: Colors.red, height: 800),

        SizedBox(height: 215,),

        AboutMe(),

        SizedBox(height: 400,),

        FittedBox(child: MyStack()),

        SizedBox(height: 190),

        ProjectSection(),

        SizedBox(height: 200,),
        
        LastInfo(),
        ],
      );
  }
}