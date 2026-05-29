import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/projects.dart';

class ProjectSectionMobile extends StatelessWidget {
  const ProjectSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    final microMobile = isMicroMobileWidth(widthQuery);
    final horizontalPadding = microMobile
        ? clampSize(widthQuery * 0.06, 12, 18)
        : clampSize(widthQuery * 0.1, 28, 56);
    final titleSize = microMobile
        ? clampSize(widthQuery * 0.2, 40, 50)
        : clampSize(widthQuery * 0.14, 48, 76);
    final introGap = microMobile
        ? clampSize(widthQuery * 0.06, 16, 22)
        : clampSize(widthQuery * 0.05, 24, 36);
    final projectGap = microMobile
        ? clampSize(widthQuery * 0.13, 28, 40)
        : clampSize(widthQuery * 0.1, 40, 64);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                textAlign: TextAlign.center,
                'Projects',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: titleSize),
              ),
            ),
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
