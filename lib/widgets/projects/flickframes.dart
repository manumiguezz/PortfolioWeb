import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class Flickframes extends StatelessWidget {
  const Flickframes({
    super.key,
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
              
                const Text(
                  'Flickframes',
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: 70,
                    color: Colors.white
                  ),
                ),
              
                const SizedBox(
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('ISARDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('THEMOVIEDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
              
                const SizedBox(height: 20),
              
                const SizedBox(
                  width: 420,
                  child: Text(
                    'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppinslight',
                        fontSize: 20,
                    )
                  ),
                ),
              
                const SizedBox(height: 21),
              
                AnimatedButton(
                  text: 'Github',
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppinslight',
                    fontSize: 20,
                  ),
                  onPress: () => launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
                  animatedOn: AnimatedOn.onHover,
                  height: 50,
                  width: 130,
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

          // const SizedBox(width: 50,),
      
          Transform(
            transform: Matrix4.translationValues(100, 0, 0),
            child: const ResponsiveImage(
              imageAsset: 'assets/images/project/flickframes.png', 
              scaleFactor: 0.8,
            ) 
          )
        ],
      ),
    );
  }
}