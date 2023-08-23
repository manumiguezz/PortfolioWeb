import 'package:flutter/material.dart';

class TechContainer extends StatelessWidget {

  final String asset;
  final String techName;

  const TechContainer({
    super.key, 
    required this.asset, 
    required this.techName,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            'assets/icons/techstack/$asset',
            scale: 8,
          ),
        ),
        Text(
          techName, 
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15, 
            color: Colors.white,
            fontFamily: 'poppinsbold',                        
          ))
      ],
    );
  }
}