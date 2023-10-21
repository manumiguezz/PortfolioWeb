import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class NoteshopApp extends StatelessWidget {

  final double scaleFactorSum;
  final double descriptionFontSize;

  const NoteshopApp({
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
      
          Transform(
            transform: Matrix4.translationValues(-100, 0, 0),
            child: ResponsiveImage(
              imageAsset: 'assets/images/project/noteshop.png', 
              scaleFactor: 0.8 + scaleFactorSum,
            )
          ),

          const SizedBox(width: 50,),
      
          Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      
                const Text(
                  'Noteshop',
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
                      Text('JWT', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('HTTP', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('RESTAPI', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
                      
                const SizedBox(height: 20),
                      
                SizedBox(
                  width: 420,
                  child: Text(
                    'Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
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
                  animatedOn: AnimatedOn.onHover,
                  height: 50 + descriptionFontSize,
                  width: 130 + descriptionFontSize,
                  text: 'Github',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.LEFT_TO_RIGHT,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppinslight',
                    fontSize: descriptionFontSize,
                  ),
                  backgroundColor: Colors.transparent,
                  borderColor: Colors.white,
                  borderRadius: 0,
                  borderWidth: 2,
                  onPress: () => launchUrl('https://github.com/manumiguezz/NoteShopApp'),
                ),
                      
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}