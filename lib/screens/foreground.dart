import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/test/last_info_test.dart';
import 'package:portfolio_web_version/widgets/test/projects_test.dart';
import 'package:portfolio_web_version/widgets/test/skill_stack_test.dart';

import '../widgets/test/about_me_test.dart';
import '../widgets/test/presentation_test.dart';

class ForegroundWeb extends StatelessWidget {
  const ForegroundWeb({super.key});

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

        SizedBox(height: heightQuery * 0.07,),

        MyStackTwo(mobileVersion: mobileVersion),

        SizedBox(height: heightQuery * 0.1,),

        ProjectSectionTwo(mobileVersion: mobileVersion),

        SizedBox(height: heightQuery * 0.5,),
        
        const LastInfoTwo()
      ],
    );
  }
}