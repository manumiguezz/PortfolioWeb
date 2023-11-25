import 'package:flutter/material.dart';
import '../../exports/projects.dart';

class ProjectSectionMobile extends StatelessWidget {

  const ProjectSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.1),
      child: Column(
        children: [
    
          Text(
            textAlign: TextAlign.center,
            'Projects',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinsbold',
              fontSize: widthQuery * 0.15
            ),
          ),
    
          SizedBox(height: widthQuery * 0.05),
    
          const FlickFramesMobile(),
    
          SizedBox(height: widthQuery * 0.1),
    
          const NoteshopAppMobile(),
    
          SizedBox(height: widthQuery * 0.1),
    
          const CompanyRestApiMobile(),
    
        ],
        
      ),
    );
  }
}




