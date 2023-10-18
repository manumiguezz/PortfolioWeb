import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class TechStack extends StatelessWidget {
  final String asset;
  final String? techName; 

  const TechStack({
    Key? key,
    required this.asset,
    this.techName, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
        HoverImageSwitcher(
          coloredImagePath: 'assets/icons/techstackcolor/$asset',
          bwImagePath: 'assets/icons/techstack/$asset',
        ),
    
        const SizedBox(height: 10),
    
        if (techName != null)
          Text(
            techName!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontFamily: 'poppinsbold',
            ),
          ),
          
      ],
    );
  }
}