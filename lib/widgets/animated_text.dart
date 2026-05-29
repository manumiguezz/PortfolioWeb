import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatelessWidget {
  final int speed;
  final double fontSizeAnimated;
  final bool mobileVersion;
  final bool microMobile;
  final bool expanded;
  final bool useEllipsis;
  final bool scaleDown;
  const AnimatedText(
      {super.key,
      required this.speed,
      required this.fontSizeAnimated,
      required this.mobileVersion,
      this.microMobile = false,
      this.expanded = true,
      this.useEllipsis = true,
      this.scaleDown = false});

  @override
  Widget build(BuildContext context) {
    String backend = ' Software Developer.';
    String flutter = ' Testing Lead.';
    String java = ' Test Automation Engineer.';
    String student = ' Student.';

    if (mobileVersion) {
      backend = 'Software Dev';
      flutter = 'Testing Lead';
      java = microMobile ? 'QA Engineer' : 'Automation Dev';
      student = 'Student';

      return Expanded(
        child: Align(
          alignment: Alignment.center,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: DefaultTextStyle(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: fontSizeAnimated,
                color: Colors.white,
              ),
              child: AnimatedTextKit(
                isRepeatingAnimation: true,
                repeatForever: true,
                pause: const Duration(milliseconds: 1800),
                animatedTexts: [
                  TyperAnimatedText(java, speed: Duration(microseconds: speed)),
                  TyperAnimatedText(student,
                      speed: Duration(microseconds: speed)),
                  TyperAnimatedText(flutter,
                      speed: Duration(microseconds: speed)),
                  TyperAnimatedText(backend,
                      speed: Duration(microseconds: speed)),
                ],
                onTap: () {},
              ),
            ),
          ),
        ),
      );
    } else {
      final desktopText = DefaultTextStyle(
        overflow: useEllipsis ? TextOverflow.ellipsis : TextOverflow.visible,
        maxLines: 1,
        style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: fontSizeAnimated,
            color: Colors.white),
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
      );

      final desktopChild = scaleDown
          ? Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                alignment: Alignment.centerLeft,
                fit: BoxFit.scaleDown,
                child: desktopText,
              ),
            )
          : desktopText;

      if (!expanded) return desktopChild;

      return Expanded(child: desktopChild);
    }
  }
}
