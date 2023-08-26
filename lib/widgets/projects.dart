import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

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
            fontSize: 60
          ),
        ),

        SizedBox(height: 50),

        Flickframes(),

        NoteshopApp(),

        CompanyRestApi()

      ],
      
    );
  }
}



