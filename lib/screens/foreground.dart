import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/sections.dart';
import '../exports/widgets.dart';

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

          SizedBox(height: heightQuery * 0.0),

          const AboutMeMobile(),

          SizedBox(height: heightQuery * 0.07),

          const MyStackMobile(),

          SizedBox(height: heightQuery * 0.07),

          const ProjectSectionMobile(),

          SizedBox(height: heightQuery * 0.15),

          const LastInfoMobile()

        ],
      );
    } 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        const Presentation(),

        SizedBox(height: heightQuery * 0.07,),

        const AboutMe(),
        // const AboutMeTest(),

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