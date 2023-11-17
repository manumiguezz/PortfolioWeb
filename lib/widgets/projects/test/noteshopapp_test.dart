import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

import '../../responsive_image.dart';
import '../../url_launcher.dart';

class NoteshopAppTwo extends StatelessWidget {
  
  final bool mobileVersion;
  
  const NoteshopAppTwo({
    super.key, 
    required this.mobileVersion
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double subtitleSize = widthQuery * 0.013;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [

        Transform(
          transform: Matrix4.translationValues(-50, 60, 0),
          child: Transform.scale(
            scale: 1.2,
            child: SizedBox(
              width: widthQuery * 0.5,
              child: Image.asset('assets/images/project/noteshop.png'),
            ),
          ),
        ),

        // Transform(
        //   transform: Matrix4.translationValues(-80, 0, 0),
        //   child: SizedBox(
        //     width: widthQuery * 0.6,
        //     child: const ResponsiveImage(
        //       imageAsset: 'assets/images/project/noteshop.png',
        //     ),
        //   )
        // ),

        Padding(
          padding: EdgeInsets.only(right: widthQuery * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        
              Text(
                'Noteshop',
                style: TextStyle(
                  fontFamily: 'poppinsbold',
                  fontSize: widthQuery * 0.05,
                  color: Colors.white
                ),
              ),
        
              SizedBox(
                width: widthQuery * 0.30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('JWT', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('HTTP', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('RESTAPI', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                  ],
                ),
              ),
        
              SizedBox(height: heightQuery * 0.025),
        
              SizedBox(
                width: widthQuery * 0.30,
                child: Text(
                  'Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppinslight',
                      fontSize: widthQuery * 0.010,
                  )
                ),
              ),
        
              SizedBox(height: heightQuery * 0.025),
        
              AnimatedButton(
                text: 'Github',
                textStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppinslight',
                  fontSize: widthQuery * 0.013,
                ),
                onPress: () => launchUrl('https://github.com/manumiguezz/NoteShopApp'),
                animatedOn: AnimatedOn.onHover,
                height: heightQuery * 0.08,
                width: widthQuery * 0.30,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                borderColor: Colors.white,
                backgroundColor: Colors.transparent,
                selectedTextColor: Colors.black,
                isReverse: true,
                borderRadius: 0,
                borderWidth: widthQuery * 0.002,
              ),
            ],
          ),
        )
      ],
    );
  }
}