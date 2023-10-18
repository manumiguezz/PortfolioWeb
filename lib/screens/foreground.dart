import 'package:flutter/material.dart';
import 'package:portfolio_web_version/resize/large_size.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    final int spaceOne;
    final int spaceTwo;
    final int spaceThree;
    final int spaceFour;

    if (MediaQuery.of(context).size.width < 600){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;
      return LargeSize();
    }
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Presentation(),

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

