import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class Flickframes extends StatelessWidget {

  final double scaleFactorSum;
  final double descriptionFontSize;
  final bool mobileVersion;

  const Flickframes({
    super.key, 
    required this.scaleFactorSum, 
    required this.descriptionFontSize, 
    required this.mobileVersion,
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;

    if (mobileVersion) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          const Text(
            'Flickframes',
            style: TextStyle(
              fontFamily: 'poppinsbold',
              fontSize: 40,
              color: Colors.white
            ),
          ),

          const SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 14, color: Colors.white)),
                Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 14, color: Colors.white)),
                Text('ISARDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 14, color: Colors.white)),
                Text('THEMOVIEDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 14, color: Colors.white)),
              ],
            ),
          ),

          SizedBox(height: heightQuery * 0.015),

          const SizedBox(
            child: Text(
              'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
              softWrap: true,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppinslight',
                  fontSize: 14,
              )
            ),
          ),

          SizedBox(height: heightQuery * 0.015),

          AnimatedButton(
            text: 'Github',
            textStyle: const TextStyle(
              color: Colors.white,
              fontFamily: 'poppinslight',
              fontSize: 14,
            ),
            onPress: () => launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
            animatedOn: AnimatedOn.onHover,
            height: heightQuery * 0.055,
            width: widthQuery - widthQuery * 0.085,
            transitionType: TransitionType.CENTER_TB_IN,
            borderColor: Colors.white,
            backgroundColor: Colors.transparent,
            selectedBackgroundColor: Colors.white,
            selectedTextColor: Colors.black,
            borderRadius: 0,
            borderWidth: 2,
          ),

          SizedBox(height: heightQuery * 0.015),

          Transform(
            transform: Matrix4.translationValues(0, 40, 0),
            child: Transform.scale(
              scale: 1.7,
              child: const ResponsiveImage(
                imageAsset: 'assets/images/project/flickframes.png', 
                scaleFactor: 1,
              ),
            ) 
          )

        ],
      );
    } else {
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
}