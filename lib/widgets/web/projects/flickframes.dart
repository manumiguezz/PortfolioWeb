import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';

class FlickFrames extends StatelessWidget {
  
  final bool mobileVersion;

  const FlickFrames({
    super.key, 
    required this.mobileVersion
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double subtitleSize = widthQuery * 0.013;

    return Padding(
      padding: EdgeInsets.only(left: widthQuery * 0.07),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    
              Text(
                'Flickframes',
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
                    Text('ISARDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('THEMOVIEDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                  ],
                ),
              ),

              SizedBox(height: heightQuery * 0.025),

              SizedBox(
                width: widthQuery * 0.30,
                child: Text(
                  'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
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
                onPress: () => launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
                animatedOn: AnimatedOn.onHover,
                height: heightQuery * 0.08,
                width: widthQuery * 0.30,
                transitionType: TransitionType.CENTER_TB_IN,
                borderColor: Colors.white,
                backgroundColor: Colors.transparent,
                selectedBackgroundColor: Colors.white,
                selectedTextColor: Colors.black,
                borderRadius: 0,
                borderWidth: widthQuery * 0.002,
              ),    
    
            ],
          ),

          Transform(
            transform: Matrix4.translationValues(50, 60, 0),
            child: Transform.scale(
              scale: 1.2,
              child: SizedBox(
                width: widthQuery * 0.5,
                child: Image.asset('assets/images/project/flickframes.png'),
              ),
            ),
          )

        ],
      ),
    );
  }
}