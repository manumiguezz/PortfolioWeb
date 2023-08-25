import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Text(
          'My Stack',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 60
          ),
        ),

        
      ],
      
    );
  }
}