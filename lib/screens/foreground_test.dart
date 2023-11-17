import 'package:flutter/material.dart';

import '../widgets/sections/about_me_test.dart';
import '../widgets/sections/presentation_test.dart';

class ForegroundTwo extends StatelessWidget {
  const ForegroundTwo({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    late bool mobileVersion = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        PresentationTwo(mobileVersion: mobileVersion),

        SizedBox(height: heightQuery * 0.07,),

        const AboutMeTwo(),

        // SizedBox(height: spaceTwo,),

        // MyStack(
        //   mobileVersion: mobileVersion,
        //   iconStackScale: myStackIconScale, 
        //   nameStackScale: myStackNameScale,
        //   fontSize: presentationFontSize,
        //   sizedBoxBetweenStack: myStackSizedBoxBetweenStack, 
        //   iconReduction: myStackIconScaleReduction,
        // ),

        // SizedBox(height: spaceThree),

        // ProjectSection(
        //   projectSpaceBetween: projectSpaceBetween,
        //   projectFontSize: presentationFontSize,
        //   projectScaleFactorSum: projectScaleFactorSum,
        //   projectDescriptionFontSize: projectDescriptionFontSize,
        //   mobileVersion: mobileVersion,
        // ),

        // SizedBox(height: spaceFour,),

        // LastInfo(
        //   lastInfoFontSize: lastInfoFontSize,
        //   lastInfoSpaceBetween: lastInfoSpaceBetween,
        // ),

      ],
    );
  }
}