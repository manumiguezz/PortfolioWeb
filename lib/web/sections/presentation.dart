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
    final narrowDesktop = isNarrowDesktopWidth(widthQuery);
    double fontSize = narrowDesktop
        ? clampSize(widthQuery * 0.056, 40, 56)
        : clampSize(widthQuery * 0.065, 48, 96);
    final roleFontSize = narrowDesktop
        ? clampSize(widthQuery * 0.052, 38, 54)
        : clampSize(widthQuery * 0.058, 58, 96);
    final topPadding = clampSize(heightQuery * 0.2, 96, 180);
    final leftPadding = narrowDesktop
        ? clampSize(widthQuery * 0.055, 32, 64)
        : clampSize(widthQuery * 0.07, 48, 112);
    final socialGap = clampSize(widthQuery * 0.02, 18, 36);
    final socialHeight = clampSize(heightQuery * 0.12, 72, 120);
    final contentWidth =
        (widthQuery - leftPadding - 24).clamp(0, double.infinity).toDouble();
    final lightStyle = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        fontSize: fontSize,
        color: Colors.white);
    final boldStyle = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: Colors.white);
    final roleLightStyle = lightStyle.copyWith(fontSize: roleFontSize);

    return Padding(
      padding: EdgeInsets.only(top: topPadding, left: leftPadding, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (narrowDesktop)
            SizedBox(
              width: contentWidth,
              child: FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Hi, I'm ", style: lightStyle),
                      TextSpan(text: 'Manuel Miguez,', style: boldStyle),
                    ],
                  ),
                  maxLines: 1,
                ),
              ),
            )
          else
            Row(
              children: [
                Text(
                  "Hi, I'm ",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: lightStyle,
                ),
                Expanded(
                  child: Text(
                    'Manuel Miguez,',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: true,
                    style: boldStyle,
                  ),
                ),
              ],
            ),
          if (narrowDesktop)
            SizedBox(
              width: contentWidth,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('a', maxLines: 1, style: roleLightStyle),
                  AnimatedText(
                    speed: 70000,
                    fontSizeAnimated: roleFontSize,
                    mobileVersion: false,
                    useEllipsis: false,
                  ),
                ],
              ),
            )
          else
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'a',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: roleLightStyle,
                ),
                AnimatedText(
                  speed: 70000,
                  fontSizeAnimated: roleFontSize,
                  mobileVersion: false,
                  useEllipsis: false,
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
