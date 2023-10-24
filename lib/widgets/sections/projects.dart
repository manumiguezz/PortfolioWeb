import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class ProjectSection extends StatelessWidget {

  final double projectSpaceBetween;
  final double projectFontSize;
  final double projectScaleFactorSum;
  final double projectDescriptionFontSize;
  final bool mobileVersion;

  const ProjectSection({
    super.key, 
    required this.projectSpaceBetween, 
    required this.projectFontSize, 
    required this.projectScaleFactorSum, 
    required this.projectDescriptionFontSize, 
    required this.mobileVersion
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;

    if (mobileVersion) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.085),
        child: Column(
          children: [
      
            const Text(
              textAlign: TextAlign.center,
              'My Projects',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppinsbold',
                fontSize: 50
              ),
            ),
      
            SizedBox(height: heightQuery * 0.06),

            Flickframes(
              scaleFactorSum: projectScaleFactorSum,
              descriptionFontSize: projectDescriptionFontSize,
              mobileVersion: mobileVersion,
            ),

            SizedBox(height: projectSpaceBetween),

            NoteshopApp(
              scaleFactorSum: projectScaleFactorSum,
              descriptionFontSize: projectDescriptionFontSize,
              mobileVersion: mobileVersion,
            ),

            SizedBox(height: projectSpaceBetween),

            CompanyRestApi(
              scaleFactorSum: projectScaleFactorSum,
              descriptionFontSize: projectDescriptionFontSize,
              mobileVersion: mobileVersion,
            )

          ],
        ),
      );
      
    } else {

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
            mobileVersion: mobileVersion,
          ),

          SizedBox(height: projectSpaceBetween),

          NoteshopApp(
            scaleFactorSum: projectScaleFactorSum,
            descriptionFontSize: projectDescriptionFontSize,
            mobileVersion: mobileVersion,
          ),

          SizedBox(height: projectSpaceBetween),

          CompanyRestApi(
            scaleFactorSum: projectScaleFactorSum,
            descriptionFontSize: projectDescriptionFontSize,
            mobileVersion: mobileVersion,
          )

        ],
        
      );
    }
  }
}



