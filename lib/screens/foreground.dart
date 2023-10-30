import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;

    // general variables
    
    late bool mobileVersion = false;
    late bool invertedVersion = false;
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
    late double myStackSizedBoxBetweenStack = 60;

    // variables for Project Section
    late double projectSpaceBetween = 10;
    late double projectScaleFactorSum = 0;
    late double projectDescriptionFontSize = 20;

    // variables for last infoFontSize
    late double lastInfoFontSize = 12;
    late double lastInfoSpaceBetween = 150;

    if (widthQuery < 400) {
      if (heightQuery < 400){}
      mobileVersion = true;
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 30;
      presentationReduceIcon = 10;

      myStackIconScale = 12;
      myStackNameScale = 15;

      projectSpaceBetween = heightQuery * 0.28;
      projectScaleFactorSum = 1.4;
      projectDescriptionFontSize = 28;

      lastInfoFontSize = 8;
      lastInfoSpaceBetween = 28;

    } else if (widthQuery < 500) {
      mobileVersion = true;
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 42;
      presentationReduceIcon = 6;

      myStackIconScale = 13;
      myStackNameScale = 10;

      projectSpaceBetween = 180;

      lastInfoFontSize = 17;
      lastInfoFontSize = 10;

    } else if (widthQuery < 600) {

      mobileVersion = true;
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 52;
      presentationReduceIcon = 6;

      myStackIconScale = 13;
      myStackNameScale = 10;

      projectSpaceBetween = 180;

      lastInfoFontSize = 17;
      lastInfoFontSize = 10;

    } else if (widthQuery < 700) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 50;
      spaceFour = 240;

      presentationFontSize = 47;
      presentationReduceIcon = 1.5;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 0;

    } else if (widthQuery < 800) {
      if (heightQuery < 500){
        invertedVersion = true;
      }
      spaceOne = 180;
      spaceTwo = 230;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 55;
      presentationReduceIcon = 2;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 120;

    } else if (widthQuery < 900) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 50;
      spaceFour = 240;

      presentationFontSize = 64;
      presentationReduceIcon = 1.5;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 0;

    } else if (widthQuery < 1000) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 50;
      spaceFour = 240;

      presentationFontSize = 70;
      presentationReduceIcon = 1.5;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 0;

    } else if (widthQuery < 1200) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      presentationFontSize = 80;
      presentationReduceIcon = 0;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 0;
    } else if (widthQuery < 1200) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      presentationFontSize = 80;
      presentationReduceIcon = 0;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 0;
    } else if (widthQuery < 1600) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      presentationFontSize = 90;
      presentationReduceIcon = 0;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 0;
    } else if (widthQuery < 2000) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      presentationFontSize = 95;
      presentationReduceIcon = 0;

      myStackIconScale = 8;
      myStackNameScale = 15;

      projectSpaceBetween = 0;
    } else if (widthQuery < 2600) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      presentationFontSize = 105;
      presentationReduceIcon = 0;

      myStackIconScale = 6;
      myStackNameScale = 25;

      projectSpaceBetween = 0;
    } else if (widthQuery < 4000) {
      spaceOne = 260;
      spaceTwo = 400;
      spaceThree = 150;
      spaceFour = 200;

      presentationFontSize = 120;
      presentationReduceIcon = 0;

      myStackIconScale = 5;
      myStackNameScale = 30;

      projectSpaceBetween = 0;

      lastInfoFontSize = 20;
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Presentation(
          fontSize: presentationFontSize, 
          reduceIcon: presentationReduceIcon,
          mobileVersion: mobileVersion,
        ),

        SizedBox(height: spaceOne,),

        AboutMe(
          invertedVersion: invertedVersion,
          mobileVersion: mobileVersion
        ),

        SizedBox(height: spaceTwo,),

        MyStack(
          mobileVersion: mobileVersion,
          iconStackScale: myStackIconScale, 
          nameStackScale: myStackNameScale,
          fontSize: presentationFontSize,
          sizedBoxBetweenStack: myStackSizedBoxBetweenStack,
        ),

        SizedBox(height: spaceThree),

        ProjectSection(
          projectSpaceBetween: projectSpaceBetween,
          projectFontSize: presentationFontSize,
          projectScaleFactorSum: projectScaleFactorSum,
          projectDescriptionFontSize: projectDescriptionFontSize,
          mobileVersion: mobileVersion,
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

