import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    late double mediaQueryHeightValue = MediaQuery.of(context).size.height;


    // space between
    late double spaceOne = 100;
    late double spaceTwo = 100;
    late double spaceThree = 100;
    late double spaceFour = 100;

    // variables for presentation
    late double fontSize = 80;
    late double reduceIcon = 1;

    // variables for MyStack
    late double iconStackScale = 10;
    late double nameStackScale = 10;
    late double horizontalTechPadding = 100;

    if (MediaQuery.of(context).size.width > 1300){
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      fontSize = 80;
      reduceIcon = 0;

      iconStackScale = 8;
      nameStackScale = 15;
      horizontalTechPadding = 300;
    } else if (MediaQuery.of(context).size.width > 1000){
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 50;
      spaceFour = 240;

      fontSize = 70;
      reduceIcon = 1.5;

      iconStackScale = 8;
      nameStackScale = 15;
      horizontalTechPadding = 180; 
    } else if (MediaQuery.of(context).size.width > 800){
      spaceOne = 180;
      spaceTwo = 230;
      spaceThree = 50;
      spaceFour = 200;

      fontSize = 60;
      reduceIcon = 2;

      iconStackScale = 8;
      nameStackScale = 15;
      horizontalTechPadding = 90;
    } else if (MediaQuery.of(context).size.width > 600){
      spaceOne = 145;
      spaceTwo = 230;
      spaceThree = 50;
      spaceFour = 200;

      fontSize = 45;
      reduceIcon = 4;

      iconStackScale = 11;
      nameStackScale = 12;
      horizontalTechPadding = 60;
    } else if (MediaQuery.of(context).size.width > 400){
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      fontSize = 35;
      reduceIcon = 6;

      iconStackScale = 13;
      nameStackScale = 10;
      horizontalTechPadding = 50;
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Presentation(fontSize: fontSize, reduceIcon: reduceIcon,),

        SizedBox(height: spaceOne,),

        const AboutMe(),

        SizedBox(height: spaceTwo,),

        MyStack(iconStackScale: iconStackScale, nameStackScale: nameStackScale, horizontalTechPadding: horizontalTechPadding),

        SizedBox(height: spaceThree),

        const ProjectSection(),

        SizedBox(height: spaceFour,),

        const LastInfo(),

      ],
    );
  }
}

