import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class Flickframes extends StatelessWidget {

  final double scaleFactorSum;
  final double descriptionFontSize;

  const Flickframes({
    super.key, 
    required this.scaleFactorSum, 
    required this.descriptionFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,  
        children: [
            
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                const SizedBox(height: 10,),
              
                Text(
                  'Flickframes',
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: 70 + (descriptionFontSize * 0.1),
                    color: Colors.white
                  ),
                ),
              
                SizedBox(
                  width: 330 + (descriptionFontSize * 1.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15 + (descriptionFontSize * 0.2), color: Colors.white)),
                      Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15 + (descriptionFontSize * 0.2), color: Colors.white)),
                      Text('ISARDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15 + (descriptionFontSize * 0.2), color: Colors.white)),
                      Text('THEMOVIEDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15 + (descriptionFontSize * 0.2), color: Colors.white)),
                    ],
                  ),
                ),
              
                const SizedBox(height: 20),
              
                SizedBox(
                  width: 420,
                  child: Text(
                    'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppinslight',
                        fontSize: descriptionFontSize,
                    )
                  ),
                ),
              
                const SizedBox(height: 21),
              
                AnimatedButton(
                  text: 'Github',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppinslight',
                    fontSize: descriptionFontSize,
                  ),
                  onPress: () => launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
                  animatedOn: AnimatedOn.onHover,
                  height: 50 + descriptionFontSize,
                  width: 130 + descriptionFontSize,
                  transitionType: TransitionType.CENTER_TB_IN,
                  borderColor: Colors.white,
                  backgroundColor: Colors.transparent,
                  selectedBackgroundColor: Colors.white,
                  selectedTextColor: Colors.black,
                  borderRadius: 0,
                  borderWidth: 2,
                ),                                
              ],
            ),
          ),
      
          Transform(
            transform: Matrix4.translationValues(100, 0, 0),
            child: ResponsiveImage(
              imageAsset: 'assets/images/project/flickframes.png', 
              scaleFactor: 0.8 + scaleFactorSum,
            ) 
          )
        ],
      ),
    );
  }
}