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
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/icons/techstack/$asset',
              scale: 6,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 115),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: Colors.black, width: 4, strokeAlign: BorderSide.strokeAlignOutside)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  techName, 
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20, 
                    color: Colors.black,
                    fontFamily: 'poppinsbold',                        
                  )),
              ),
            ),
          ),
        )
      ],
    );
  }
}