import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class ProjectSectionTwo extends StatelessWidget {

  final bool mobileVersion;

  const ProjectSectionTwo({
    super.key,
    required this.mobileVersion
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;

    return Column(
      children: [

        Text(
          textAlign: TextAlign.center,
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: widthQuery * 0.07
          ),
        ),

        const SizedBox(height: 50),

        Flickframes(
          scaleFactorSum: widthQuery * 0.5,
          descriptionFontSize: widthQuery * 0.5,
          mobileVersion: mobileVersion,
        ),

        SizedBox(height: widthQuery * 0.2),

        NoteshopApp(
          scaleFactorSum: widthQuery * 0.5,
          descriptionFontSize: widthQuery * 0.5,
          mobileVersion: mobileVersion,
        ),

        SizedBox(height: widthQuery * 0.2),

        CompanyRestApi(
          scaleFactorSum: widthQuery * 0.5,
          descriptionFontSize: widthQuery * 0.5,
          mobileVersion: mobileVersion,
        )

      ],
      
    );
  }
}




