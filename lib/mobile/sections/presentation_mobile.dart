import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = clampSize(widthQuery * 0.105, 38, 60);
    final topPadding = clampSize(heightQuery * 0.22, 96, 170);
    final socialGap = clampSize(widthQuery * 0.05, 18, 32);
    final textWidth = widthQuery - 40;

    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: textWidth,
            child: Text(
              "Hi, I'm ",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                  fontFamily: 'poppinslight',
                  fontSize: fontSize,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            width: textWidth,
            child: Text(
              'Manu Miguez',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: true,
              style: TextStyle(
                  fontFamily: 'poppinsbold',
                  fontSize: fontSize,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            width: textWidth,
            child: Row(
              children: [
                AnimatedText(
                  speed: 100000,
                  fontSizeAnimated: fontSize,
                  mobileVersion: true,
                ),
              ],
            ),
          ),
          SizedBox(height: clampSize(heightQuery * 0.045, 28, 48)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SocialButton(
                  imageUrl: 'assets/icons/socialmedia/github_white.png',
                  url: 'https://github.com/manumiguezz'),
              SizedBox(width: socialGap),
              const SocialButton(
                  imageUrl: 'assets/icons/socialmedia/email_white.png',
                  url: 'mailto:manuelmiguezlauria@gmail.com'),
              SizedBox(width: socialGap),
              const SocialButton(
                  imageUrl: 'assets/icons/socialmedia/linkedin_white.png',
                  url: 'https://www.linkedin.com/in/manuelmiguezlauria/'),
            ],
          ),
        ],
      ),
    );
  }
}
