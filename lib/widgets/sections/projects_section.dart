import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/projects/companyrestapi.dart';
import 'package:portfolio_web_version/widgets/projects/flickframes.dart';
import 'package:portfolio_web_version/widgets/projects/noteshopapp.dart';

class ProjectSectionTwo extends StatelessWidget {

  final bool mobileVersion;

  const ProjectSectionTwo({
    super.key,
    required this.mobileVersion
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;

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

        SizedBox(height: widthQuery * 0.05),

        FlickFrames(mobileVersion: mobileVersion),

        SizedBox(height: widthQuery * 0.1),

        NoteshopApp(mobileVersion: mobileVersion),

        SizedBox(height: widthQuery * 0.1),

        CompanyRestApi(mobileVersion: mobileVersion),

      ],
      
    );
  }
}




