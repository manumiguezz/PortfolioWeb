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
    final sectionTitleSize = clampSize(widthQuery * 0.07, 52, 96);
    final introGap = clampSize(widthQuery * 0.06, 52, 96);
    final projectGap = clampSize(widthQuery * 0.08, 64, 116);

    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'My Projects',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinsbold',
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
