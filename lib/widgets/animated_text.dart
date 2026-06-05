import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedText extends StatelessWidget {
  final int speed;
  final double fontSizeAnimated;
  final bool mobileVersion;
  final bool microMobile;
  final bool expanded;
  final bool useEllipsis;
  const AnimatedText(
      {super.key,
      required this.speed,
      required this.fontSizeAnimated,
      required this.mobileVersion,
      this.microMobile = false,
      this.expanded = true,
      this.useEllipsis = true});

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

      final textStyle = TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: fontSizeAnimated,
        color: Colors.white,
      );

      final phrases = [java, student, flutter, backend];

      return Expanded(
        child: Align(
          alignment: Alignment.center,
          child: _StableTyperText(
            alignment: Alignment.center,
            phrases: phrases,
            referenceText: _longestPhrase(phrases),
            speed: speed,
            style: textStyle,
            textAlign: TextAlign.center,
          ),
        ),
      );
    } else {
      final textStyle = TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: fontSizeAnimated,
          color: Colors.white);
      final phrases = [java, student, flutter, backend];
      final desktopChild = _StableTyperText(
        alignment: Alignment.topLeft,
        overflow: useEllipsis ? TextOverflow.ellipsis : TextOverflow.visible,
        maxLines: useEllipsis ? 1 : null,
        phrases: phrases,
        referenceText: _longestPhrase(phrases),
        speed: speed,
        style: textStyle,
      );

      if (!expanded) return desktopChild;

      return Expanded(
        child: Align(
          alignment: Alignment.topLeft,
          child: desktopChild,
        ),
      );
    }
  }
}

String _longestPhrase(List<String> phrases) {
  return phrases.reduce(
    (longest, phrase) => phrase.length > longest.length ? phrase : longest,
  );
}

class _StableTyperText extends StatelessWidget {
  const _StableTyperText({
    required this.alignment,
    required this.phrases,
    required this.referenceText,
    required this.speed,
    required this.style,
    this.maxLines,
    this.overflow = TextOverflow.visible,
    this.textAlign = TextAlign.start,
  });

  final Alignment alignment;
  final List<String> phrases;
  final String referenceText;
  final int speed;
  final TextStyle style;
  final int? maxLines;
  final TextOverflow overflow;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final typerTexts = phrases
        .map(
          (phrase) => TyperAnimatedText(
            phrase,
            textAlign: textAlign,
            speed: Duration(microseconds: speed),
          ),
        )
        .toList();

    return DefaultTextStyle(
      overflow: overflow,
      maxLines: maxLines,
      style: style,
      child: Stack(
        alignment: alignment,
        children: [
          ExcludeSemantics(
            child: Opacity(
              opacity: 0,
              child: Text(
                referenceText,
                maxLines: maxLines,
                overflow: overflow,
                softWrap: maxLines != 1,
                textAlign: textAlign,
                style: style,
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: alignment,
              child: AnimatedTextKit(
                isRepeatingAnimation: true,
                repeatForever: true,
                pause: const Duration(milliseconds: 1800),
                animatedTexts: typerTexts,
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
