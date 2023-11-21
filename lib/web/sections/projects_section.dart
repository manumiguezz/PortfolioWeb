import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class ProjectSection extends StatelessWidget {

  const ProjectSection({super.key,});

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

        const FlickFrames(),

        SizedBox(height: widthQuery * 0.1),

        const NoteshopApp(),

        SizedBox(height: widthQuery * 0.1),

        const CompanyRestApi(),

      ],
      
    );
  }
}




