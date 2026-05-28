import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class Presentation extends StatelessWidget {
  const Presentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = clampSize(widthQuery * 0.065, 48, 96);
    final topPadding = clampSize(heightQuery * 0.2, 96, 180);
    final leftPadding = clampSize(widthQuery * 0.07, 48, 112);
    final socialGap = clampSize(widthQuery * 0.02, 18, 36);
    final socialHeight = clampSize(heightQuery * 0.12, 72, 120);

    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: leftPadding, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Hi, I'm ",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    fontFamily: 'poppinslight',
                    fontSize: fontSize,
                    color: Colors.white),
              ),
              Expanded(
                child: Text(
                  'Manuel Miguez,',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                      fontFamily: 'poppinsbold',
                      fontSize: fontSize,
                      color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'a',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    fontFamily: 'poppinslight',
                    fontSize: fontSize,
                    color: Colors.white),
              ),
              AnimatedText(
                speed: 70000,
                fontSizeAnimated: fontSize,
                mobileVersion: false,
              ),
            ],
          ),
          SizedBox(height: clampSize(heightQuery * 0.02, 16, 28)),
          SizedBox(
            height: socialHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
          ),
        ],
      ),
    );
  }
}
