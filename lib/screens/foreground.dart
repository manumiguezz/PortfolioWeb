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
    late double spaceOne = 100;
    late double spaceTwo = 100;
    late double spaceThree = 100;
    late double spaceFour = 100;

    // variables for presentation
    late double presentationFontSize = 80;
    late double presentationReduceIcon = 1;

    // variables for about me section
    late double aboutMeTitleFontSize = 0;
    late double aboutMeDescriptionFontSize = 0;

    // variables for MyStack
    late double myStackIconScale = 10;
    late double myStackNameScale = 10;
    late double myStackHorizontalTechPadding = 100;
    late double myStackSizedBoxBetweenStack = 60;

    // variables for Project Section
    late double projectSpaceBetween = 10;
    late double projectScaleFactorSum = 0;
    late double projectDescriptionFontSize = 20;

    // variables for last infoFontSize
    late double lastInfoFontSize = 12;
    late double lastInfoSpaceBetween = 150;

    if (widthQuery < 400) {
      mobileVersion = true;
      spaceOne = 135;
      spaceTwo = 150;
      spaceThree = 50;
      spaceFour = 200;

      presentationFontSize = 25;
      presentationReduceIcon = 10;

      aboutMeTitleFontSize = 70;
      aboutMeDescriptionFontSize = 28;

      myStackIconScale = 12;
      myStackNameScale = 15;
      myStackHorizontalTechPadding = 10;

      projectSpaceBetween = heightQuery * 0.28;
      projectScaleFactorSum = 1.4;
      projectDescriptionFontSize = 28;

      lastInfoFontSize = 8;
      lastInfoSpaceBetween = 28;

    } else if (widthQuery < 600) {

      mobileVersion = true;
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

    } else if (widthQuery < 800) {
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

    } else if (widthQuery < 1000) {
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

    } else if (widthQuery < 1200) {
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
          mobileVersion: mobileVersion
        ),

        SizedBox(height: spaceTwo,),

        MyStack(
          mobileVersion: mobileVersion,
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

