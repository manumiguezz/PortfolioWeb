import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';

class FlickFramesMobile extends StatelessWidget {

  const FlickFramesMobile({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double subtitleSize = widthQuery * 0.04;

    return Column(
      children: [

        Text(
          'Flickframes',
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
            Text('ISARDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('THEMOVIEDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
          ],
        ),

        SizedBox(height: heightQuery * 0.01),

        Text(
          'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
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
          onPress: () => launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
          animatedOn: AnimatedOn.onHover,
          height: heightQuery * 0.05,
          width: widthQuery,
          transitionType: TransitionType.CENTER_TB_IN,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedBackgroundColor: Colors.white,
          selectedTextColor: Colors.black,
          borderRadius: 0,
          borderWidth: widthQuery * 0.002,
        ),

        SizedBox(height: heightQuery * 0.1),

        Transform.scale(
          scale: 1.5,
          child: SizedBox(
            width: widthQuery,
            child: Image.asset('assets/images/project/flickframes.png'),
          ),
        ),

        SizedBox(height: heightQuery * 0.05),

      ],
    );
  }
}