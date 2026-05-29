import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';

class CustomAnimatedButton extends StatelessWidget {
  const CustomAnimatedButton({
    super.key,
    this.width,
  });

  final double? width;

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    final compact = isMobileWidth(widthQuery);
    final buttonWidth = width ??
        (compact
            ? clampSize(widthQuery * 0.68, 220, 320)
            : clampSize(widthQuery * 0.13, 150, 220));

    return AnimatedButton(
      text: 'My Resume',
      textStyle: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: compact
            ? clampSize(widthQuery * 0.045, 16, 24)
            : clampSize(widthQuery * 0.012, 14, 18),
      ),
      onPress: () => launchUrl(
          'https://firebasestorage.googleapis.com/v0/b/manuelmiguezlauriaportfolio.appspot.com/o/Manuel%20Miguez%20Laur%C3%ADa%20(EN).pdf?alt=media&token=e44cfe9f-43ad-41cc-9a6e-5f944a00d51a'),
      animatedOn: AnimatedOn.onHover,
      height: compact
          ? clampSize(heightQuery * 0.05, 44, 54)
          : clampSize(heightQuery * 0.065, 48, 64),
      width: buttonWidth,
      transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
      borderColor: Colors.black,
      selectedBackgroundColor: Colors.black,
      selectedTextColor: Colors.white,
      borderRadius: 0,
      borderWidth: compact
          ? clampSize(widthQuery * 0.005, 2, 3)
          : clampSize(widthQuery * 0.002, 2, 3),
    );
  }
}
