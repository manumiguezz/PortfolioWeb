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
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 23),
            child: Image.asset(
              'assets/icons/techstack/$asset',
              scale: 8,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 115),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                techName, 
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15, 
                  color: Colors.white,
                  fontFamily: 'poppinsbold',                        
                )),
            ),
          ),
        )
      ],
    );
  }
}