import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/sections.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import '../exports/widgets.dart';

class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    double heightQuery = MediaQuery.of(context).size.height;
    double widthQuery = MediaQuery.of(context).size.width;
    bool mobileVersion = isMobileWidth(widthQuery);
    final sectionGap = clampSize(heightQuery * 0.07, 40, 72);
    final largeSectionGap = clampSize(heightQuery * 0.1, 56, 104);
    final footerGap = clampSize(heightQuery * 0.16, 80, 160);

    if (mobileVersion) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PresentationMobile(),
          SizedBox(height: sectionGap),
          const ArrowIcon(),
          const SizedBox(height: 0),
          const AboutMeMobile(),
          SizedBox(height: sectionGap),
          const MyStackMobile(),
          SizedBox(height: sectionGap),
          const ProjectSectionMobile(),
          SizedBox(height: footerGap),
          const LastInfoMobile()
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Presentation(),

        SizedBox(height: sectionGap),

        const AboutMe(),
        // const AboutMeTest(),

        SizedBox(height: sectionGap),

        const MyStack(),

        SizedBox(height: largeSectionGap),

        const ProjectSection(),

        SizedBox(height: footerGap),

        const LastInfo()
      ],
    );
  }
}
