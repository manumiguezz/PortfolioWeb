import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    late double spaceOne = 100;
    late double spaceTwo = 100;
    late double spaceThree = 100;
    late double spaceFour = 100;

    late double fontSize = 80;

    if (MediaQuery.of(context).size.width > 1300){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 80;
    } else if (MediaQuery.of(context).size.width > 1000){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 70;
    } else if (MediaQuery.of(context).size.width > 800){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 60;
    } else if (MediaQuery.of(context).size.width > 600){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 45;
    } else if (MediaQuery.of(context).size.width > 400){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;

      fontSize = 35;
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Presentation(fontSize: fontSize,),

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

