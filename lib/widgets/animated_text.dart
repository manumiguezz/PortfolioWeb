import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatelessWidget {
  final int speed; 
  final double fontSizeAnimated;
  final bool mobileVersion;
  const AnimatedText({
    super.key, 
    required this.speed, 
    required this.fontSizeAnimated, 
    required this.mobileVersion
  });

  @override
  Widget build(BuildContext context) {

    String backend = ' Backend Specialist.';
    String flutter = ' Flutter Developer.';
    String java = ' Java Developer.';
    String student = ' Student.';

    if (mobileVersion) {
      backend = 'Backend Dev';
      flutter = 'Flutter Dev';
      java = 'Java Dev';
      student = 'Student';
    }

    return Expanded(
      child: DefaultTextStyle(
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
          fontFamily: 'poppinsbold',
          fontSize: fontSizeAnimated,
          color: Colors.white
        ),

        child: AnimatedTextKit(
          isRepeatingAnimation: true,
          repeatForever: true,
          pause: const Duration(milliseconds: 1800),

          animatedTexts: [
            TyperAnimatedText(java, speed: Duration(microseconds: speed)),
            TyperAnimatedText(student, speed: Duration(microseconds: speed)),
            TyperAnimatedText(flutter, speed: Duration(microseconds: speed)),
            TyperAnimatedText(backend, speed: Duration(microseconds: speed)),
          
          ],
          onTap: () {},
        ),
      ),
    );
  }
}