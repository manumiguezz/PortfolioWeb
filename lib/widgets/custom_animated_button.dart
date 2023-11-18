import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';

class CustomAnimatedButton extends StatelessWidget {
  const CustomAnimatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;

    return AnimatedButton(
      text: 'My Resume', 
      textStyle: TextStyle(
        fontFamily: 'poppinsbold',
        fontSize: widthQuery < 600 ? widthQuery * 0.05: widthQuery * 0.012,
      ),
      onPress: () => launchUrl('https://firebasestorage.googleapis.com/v0/b/manuelmiguezlauriaportfolio.appspot.com/o/manuelmiguezlauriaresume-en.pdf?alt=media&token=4353914e-7180-4fba-8936-489a428c3181'),
      animatedOn: AnimatedOn.onHover,
      height: widthQuery < 600 ? heightQuery * 0.05: heightQuery * 0.07,
      width: widthQuery < 600 ? widthQuery * 0.75 : widthQuery * 0.1,
      transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
      borderColor: Colors.black,
      selectedBackgroundColor: Colors.black,
      selectedTextColor: Colors.white,
      borderRadius: 0,
      borderWidth: widthQuery < 600 ? widthQuery * 0.006: widthQuery * 0.0025,
    );
  }
}