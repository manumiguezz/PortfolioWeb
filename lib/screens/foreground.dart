import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/arrow_icon.dart';
import 'package:portfolio_web_version/widgets/mobile/sections/about_me_mobile.dart';
import 'package:portfolio_web_version/widgets/mobile/sections/presentation_mobile.dart';
import 'package:portfolio_web_version/widgets/mobile/sections/skill_stack_mobile.dart';
import '../widgets/widgets.dart';

class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    double heightQuery = MediaQuery.of(context).size.height;
    double widthQuery = MediaQuery.of(context).size.width;
    bool mobileVersion = widthQuery < 600 ? true : false;

    if (mobileVersion) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const PresentationMobile(),

          SizedBox(height: heightQuery * 0.07),

          const ArrowIcon(),

          SizedBox(height: heightQuery * 0.07),

          const AboutMeMobile(),

          SizedBox(height: heightQuery * 0.07),

          const MyStackMobile()

        ],
      );
    } 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        const Presentation(),

        SizedBox(height: heightQuery * 0.07,),

        const AboutMe(),

        SizedBox(height: heightQuery * 0.07,),

        const MyStack(),

        SizedBox(height: heightQuery * 0.1,),

        const ProjectSection(),

        SizedBox(height: heightQuery * 0.5,),
        
        const LastInfo()
      ],
    );
  }
}