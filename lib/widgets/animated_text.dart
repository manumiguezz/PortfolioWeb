import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatelessWidget {
  final int speed; 
  final double fontSizeAnimated;
  const AnimatedText({
    super.key, 
    required this.speed, 
    required this.fontSizeAnimated
  });

  @override
  Widget build(BuildContext context) {

    String backend = ' Backend Specialist.';
    String flutter = ' Flutter Developer.';
    String java = ' Java Developer.';
    if (MediaQuery.of(context).size.width > 350) {
      backend = ' Backend Dev.';
      flutter = ' Flutter Dev.';
      java = ' Java Dev.';
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
            TyperAnimatedText(' Student.', speed: Duration(microseconds: speed)),
            TyperAnimatedText(flutter, speed: Duration(microseconds: speed)),
            TyperAnimatedText(backend, speed: Duration(microseconds: speed)),
          
          ],
          onTap: () {},
        ),
      ),
    );
  }
}