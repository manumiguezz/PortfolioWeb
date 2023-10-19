import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    // space between
    late double spaceOne = 100;
    late double spaceTwo = 100;
    late double spaceThree = 100;
    late double spaceFour = 100;

    // variables for presentation
    late double fontSize = 80;
    late double reduceIcon = 1;

    if (MediaQuery.of(context).size.width > 1300){
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 80;
      reduceIcon = 0;
    } else if (MediaQuery.of(context).size.width > 1000){
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 70;
      reduceIcon = 1.5;
    } else if (MediaQuery.of(context).size.width > 800){
      spaceOne = 180;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 60;
      reduceIcon = 2;
    } else if (MediaQuery.of(context).size.width > 600){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 45;
      reduceIcon = 4;
    } else if (MediaQuery.of(context).size.width > 400){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 35;
      reduceIcon = 6;
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Presentation(fontSize: fontSize, reduceIcon: reduceIcon,),

        SizedBox(height: spaceOne,),

        const AboutMe(),

        SizedBox(height: spaceTwo,),

        const FittedBox(child: MyStack()),

        SizedBox(height: spaceThree),

        const ProjectSection(),

        SizedBox(height: spaceFour,),

        const LastInfo(),

      ],
    );
  }
}

