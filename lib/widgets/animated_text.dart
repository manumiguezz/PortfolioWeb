import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedText extends StatelessWidget {
  final int speed; 
  const AnimatedText({
    super.key, 
    required this.speed
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: 1300.0,
      child: DefaultTextStyle(
        style: GoogleFonts.poppins(
          fontSize: 80,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),

        child: AnimatedTextKit(
          isRepeatingAnimation: true,
          repeatForever: true,
          pause: const Duration(milliseconds: 1800),

          animatedTexts: [
            TyperAnimatedText(' Java Developer.', speed: Duration(microseconds: speed)),
            TyperAnimatedText(' Student.', speed: Duration(microseconds: speed)),
            TyperAnimatedText(' Flutter Developer.', speed: Duration(microseconds: speed)),
            TyperAnimatedText(' Backend Specialist.', speed: Duration(microseconds: speed)),
          
          ],
          onTap: () {},
        ),
      ),
    );
  }
}