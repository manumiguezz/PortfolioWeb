import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/projects.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    final isStacked = isNarrowDesktopWidth(widthQuery);
    final sectionTitleSize = clampSize(widthQuery * 0.07, 52, 96);
    final introGap = isStacked
        ? clampSize(widthQuery * 0.17, 148, 196)
        : clampSize(widthQuery * 0.075, 68, 128);
    final projectGap = isStacked
        ? clampSize(widthQuery * 0.18, 156, 208)
        : clampSize(widthQuery * 0.08, 64, 116);

    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'My Projects',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: sectionTitleSize),
        ),
        SizedBox(height: introGap),
        const FlickFrames(),
        SizedBox(height: projectGap),
        const NoteshopApp(),
        SizedBox(height: projectGap),
        const CompanyRestApi(),
      ],
    );
  }
}
