import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/projects.dart';

class ProjectSectionMobile extends StatelessWidget {
  const ProjectSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    final horizontalPadding = clampSize(widthQuery * 0.1, 28, 56);
    final titleSize = clampSize(widthQuery * 0.14, 48, 76);
    final introGap = clampSize(widthQuery * 0.05, 24, 36);
    final projectGap = clampSize(widthQuery * 0.1, 40, 64);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            'Projects',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppinsbold',
                fontSize: titleSize),
          ),
          SizedBox(height: introGap),
          const FlickFramesMobile(),
          SizedBox(height: projectGap),
          const NoteshopAppMobile(),
          SizedBox(height: projectGap),
          const CompanyRestApiMobile(),
        ],
      ),
    );
  }
}
