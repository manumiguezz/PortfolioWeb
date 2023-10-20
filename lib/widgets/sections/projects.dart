import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class ProjectSection extends StatelessWidget {

  final double projectSpaceBetween;

  const ProjectSection({
    super.key, 
    required this.projectSpaceBetween
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const Text(
          textAlign: TextAlign.center,
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 60
          ),
        ),

        const SizedBox(height: 50),

        const Flickframes(),

        SizedBox(height: projectSpaceBetween),

        const NoteshopApp(),

        SizedBox(height: projectSpaceBetween),

        const CompanyRestApi()

      ],
      
    );
  }
}



