import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    late double mediaQueryHeightValue = MediaQuery.of(context).size.height;

    // general variables
    late double spaceOne = 100;
    late double spaceTwo = 100;
    late double spaceThree = 100;
    late double spaceFour = 100;

    // variables for presentation
    late double presentationFontSize = 80;
    late double presentationReduceIcon = 1;

    // variables for MyStack
    late double myStackIconScale = 10;
    late double myStackNameScale = 10;
    late double myStackHorizontalTechPadding = 100;
    late double myStackSizedBoxBetweenStack = 60;

    // variables for Project Section
    late double projectSpaceBetween = 10;
    late double projectScaleFactorSum = 0;

    // variables for last infoFontSize
    late double lastInfoFontSize = 12;
    late double lastInfoSpaceBetween = 150;

    if (MediaQuery.of(context).size.width > 1300){
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      presentationFontSize = 80;
      presentationReduceIcon = 0;

      myStackIconScale = 8;
      myStackNameScale = 15;
      myStackHorizontalTechPadding = 300;

      projectSpaceBetween = 0;

    } else if (MediaQuery.of(context).size.width > 1000){
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 50;
      spaceFour = 240;

      presentationFontSize = 70;
      presentationReduceIcon = 1.5;

      myStackIconScale = 8;
      myStackNameScale = 15;
      myStackHorizontalTechPadding = 180;

      projectSpaceBetween = 0;

    } else if (MediaQuery.of(context).size.width > 800){
      spaceOne = 180;
      spaceTwo = 230;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 60;
      presentationReduceIcon = 2;

      myStackIconScale = 8;
      myStackNameScale = 15;
      myStackHorizontalTechPadding = 90;

      projectSpaceBetween = 120;

    } else if (MediaQuery.of(context).size.width > 600){
      spaceOne = 145;
      spaceTwo = 230;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 45;
      presentationReduceIcon = 4;

      myStackIconScale = 11;
      myStackNameScale = 12;
      myStackHorizontalTechPadding = 60;

      projectSpaceBetween = 150;

    } else if (MediaQuery.of(context).size.width > 400){
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 35;
      presentationReduceIcon = 6;

      myStackIconScale = 13;
      myStackNameScale = 10;
      myStackHorizontalTechPadding = 50;

      projectSpaceBetween = 180;

      lastInfoFontSize = 17;
      lastInfoFontSize = 10;

    } else if (MediaQuery.of(context).size.width > 300){
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 25;
      presentationReduceIcon = 10;

      myStackIconScale = 17;
      myStackNameScale = 10;
      myStackHorizontalTechPadding = 10;

      projectSpaceBetween = 110;
      projectScaleFactorSum = 0.5;

      lastInfoFontSize = 8;
      lastInfoSpaceBetween = 30;

    } else if (MediaQuery.of(context).size.width > 200){
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 25;
      presentationReduceIcon = 10;

      myStackIconScale = 18;
      myStackNameScale = 10.5;
      myStackHorizontalTechPadding = 10;

      projectSpaceBetween = 180;
      projectScaleFactorSum = 0.5;

      lastInfoFontSize = 7;
      lastInfoSpaceBetween = 35;

    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Presentation(fontSize: presentationFontSize, reduceIcon: presentationReduceIcon,),

        SizedBox(height: spaceOne,),

        const AboutMe(),

        SizedBox(height: spaceTwo,),

        MyStack(
          iconStackScale: myStackIconScale, 
          nameStackScale: myStackNameScale, 
          horizontalTechPadding: myStackHorizontalTechPadding,
          fontSize: presentationFontSize,
          sizedBoxBetweenStack: myStackSizedBoxBetweenStack,
        ),

        SizedBox(height: spaceThree),

        ProjectSection(
          projectSpaceBetween: projectSpaceBetween,
          projectFontSize: presentationFontSize,
          projectScaleFactorSum: projectScaleFactorSum,

        ),

        SizedBox(height: spaceFour,),

        LastInfo(
          lastInfoFontSize: lastInfoFontSize,
          lastInfoSpaceBetween: lastInfoSpaceBetween,
        ),

      ],
    );
  }
}

