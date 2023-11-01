import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';

class CustomAnimatedButton extends StatelessWidget {
  const CustomAnimatedButton({
    super.key, 
    required this.invertedVersion,
  });

  final bool invertedVersion;
  

  @override
  Widget build(BuildContext context) {

    if (invertedVersion) {
      return AnimatedButton(
        text: 'My Resume', 
        textStyle: const TextStyle(
          fontFamily: 'poppinsbold',
          fontSize: 20,
          color: Colors.white
        ),
        onPress: () => launchUrl('https://firebasestorage.googleapis.com/v0/b/manuelmiguezlauriaportfolio.appspot.com/o/manuelmiguezlauriaresume-en.pdf?alt=media&token=4353914e-7180-4fba-8936-489a428c3181'),
        animatedOn: AnimatedOn.onHover,
        height: 50,
        width: 150,
        transitionType: TransitionType.LEFT_TO_RIGHT,
        borderColor: Colors.white,
        selectedTextColor: Colors.black,
        backgroundColor: Colors.transparent,
        borderRadius: 0,
        borderWidth: 3,
      );
    }

    return AnimatedButton(
      text: 'My Resume', 
      textStyle: const TextStyle(
        fontFamily: 'poppinsbold',
        fontSize: 20,
      ),
      onPress: () => launchUrl('https://firebasestorage.googleapis.com/v0/b/manuelmiguezlauriaportfolio.appspot.com/o/manuelmiguezlauriaresume-en.pdf?alt=media&token=4353914e-7180-4fba-8936-489a428c3181'),
      animatedOn: AnimatedOn.onHover,
      height: 50,
      width: 150,
      transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
      borderColor: Colors.black,
      selectedBackgroundColor: Colors.black,
      selectedTextColor: Colors.white,
      borderRadius: 0,
      borderWidth: 3,
    );
  }
}