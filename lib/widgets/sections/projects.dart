import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class ProjectSection extends StatelessWidget {

  final double projectSpaceBetween;
  final double projectFontSize;
  final double projectScaleFactorSum;
  final double projectDescriptionFontSize;

  const ProjectSection({
    super.key, 
    required this.projectSpaceBetween, 
    required this.projectFontSize, 
    required this.projectScaleFactorSum, 
    required this.projectDescriptionFontSize
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(
          textAlign: TextAlign.center,
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: projectFontSize
          ),
        ),

        const SizedBox(height: 50),

        Flickframes(
          scaleFactorSum: projectScaleFactorSum,
          descriptionFontSize: projectDescriptionFontSize,
        ),

        SizedBox(height: projectSpaceBetween),

        NoteshopApp(
          scaleFactorSum: projectScaleFactorSum,
          descriptionFontSize: projectDescriptionFontSize,
        ),

        SizedBox(height: projectSpaceBetween),

        CompanyRestApi(
          scaleFactorSum: projectScaleFactorSum,
          descriptionFontSize: projectDescriptionFontSize,
        )

      ],
      
    );
  }
}



