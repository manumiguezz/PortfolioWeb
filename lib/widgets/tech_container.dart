import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

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
        

        HoverImageSwitcher(coloredImagePath: 'assets/icons/techstackcolor/$asset', bwImagePath: 'assets/icons/techstack/$asset'),
        // ColorFiltered(
        //   colorFilter: const ColorFilter.matrix([
        //     0.2126,0.7152,0.0722,0,0,
        //     0.2126,0.7152,0.0722,0,0,
        //     0.2126,0.7152,0.0722,0,0,
        //     0,0,0,1,0,
        //   ]),
        //   child: Image.asset('assets/icons/techstackcolor/$asset', scale: 8,),        
        // ),

        const SizedBox(height: 10),

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