import 'package:flutter/material.dart';

import '../../exports/widgets.dart';

class NoteshopAppMobile extends StatelessWidget {
  
  const NoteshopAppMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double subtitleSize = widthQuery * 0.04;

    return Column(
      children: [

        Text( 
          'Noteshop',
          style: TextStyle(
            fontFamily: 'poppinsbold',
            fontSize: widthQuery * 0.1,
            color: Colors.white
          ),
        ),

        SizedBox(height: heightQuery * 0.01),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('JWT', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('HTTP', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('RESTAPI', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
          ],
        ),

        SizedBox(height: heightQuery * 0.01),

        Text(
          'Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinslight',
              fontSize: widthQuery * 0.04,
          )
        ),

        SizedBox(height: heightQuery * 0.02),

        AnimatedButton(
          text: 'Github',
          textStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinslight',
            fontSize: widthQuery * 0.04,
          ),
          onPress: () => launchUrl('https://github.com/manumiguezz/NoteShopApp'),
          animatedOn: AnimatedOn.onHover,
          height: heightQuery * 0.05,
          width: widthQuery,
          transitionType: TransitionType.LEFT_TO_RIGHT,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedTextColor: Colors.black,
          isReverse: true,
          borderRadius: 0,
          borderWidth: widthQuery * 0.002,
        ),
        
        SizedBox(height: heightQuery * 0.12),

        Transform.scale(
          scale: 1.5,
          child: SizedBox(
            width: widthQuery,
            child: Image.asset('assets/images/project/noteshop.png'),
          ),
        ),

        SizedBox(height: heightQuery * 0.08),

      ],
    );
  }
}