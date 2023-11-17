import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class TechStack extends StatelessWidget {
  final String asset;
  final String? techName; 
  final double nameSize;
  final double stackSize;

  const TechStack({
    required this.asset,
    required this.stackSize, 
    required this.nameSize,
    this.techName, 
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
        HoverImageSwitcher(
          coloredImagePath: 'assets/icons/techstackcolor/$asset',
          bwImagePath: 'assets/icons/techstack/$asset',
          size: stackSize,
        ),
    
        const SizedBox(height: 10),
    
        if (techName != null)
          Text(
            techName!,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: nameSize,
              color: Colors.white,
              fontFamily: 'poppinsbold',
            ),
          ),
          
      ],
    );
  }
}