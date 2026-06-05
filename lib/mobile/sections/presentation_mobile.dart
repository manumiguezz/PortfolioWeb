import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class PresentationMobile extends StatelessWidget {
  const PresentationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    final microMobile = isMicroMobileWidth(widthQuery);
    final compactMobile = widthQuery >= 560;
    double fontSize = microMobile
        ? clampSize(widthQuery * 0.13, 28, 36)
        : clampSize(widthQuery * 0.105, 38, compactMobile ? 54 : 60);
    final roleFontSize = microMobile
        ? fontSize
        : clampSize(fontSize, 38, compactMobile ? 52 : 60);
    final topPadding = compactMobile
        ? clampSize(heightQuery * 0.14, 88, 112)
        : clampSize(heightQuery * 0.22, 96, 170);
    final horizontalPadding = microMobile ? 16.0 : 20.0;
    final socialGap = microMobile
        ? clampSize(widthQuery * 0.045, 10, 14)
        : clampSize(widthQuery * 0.05, 18, 32);
    final textWidth = widthQuery - (horizontalPadding * 2);

    return Padding(
      padding: EdgeInsets.only(
        top: topPadding,
        left: horizontalPadding,
        right: horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: textWidth,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                "Hi, I'm ",
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: fontSize,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: textWidth,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Manu Miguez',
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: textWidth,
            child: Row(
              children: [
                AnimatedText(
                  speed: 100000,
                  fontSizeAnimated: roleFontSize,
                  mobileVersion: true,
                  microMobile: microMobile,
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
