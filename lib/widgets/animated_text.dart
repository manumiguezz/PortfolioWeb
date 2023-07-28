import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.0,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30,
          fontFamily: 'Agne',
          color: Colors.white
        ),
        child: AnimatedTextKit(
          isRepeatingAnimation: true,
          repeatForever: true,
          pause: const Duration(milliseconds: 1300),
          animatedTexts: [
            TyperAnimatedText('Java Developer'),
            TyperAnimatedText('Student'),
            TyperAnimatedText('Leader'),
          ],
          onTap: () {
            print("Tap Event");
          },
        ),
      ),
    );
  }
}