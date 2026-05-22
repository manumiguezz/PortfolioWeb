import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class FlickFramesMobile extends StatelessWidget {
  const FlickFramesMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    final horizontalPadding = clampSize(widthQuery * 0.1, 28, 56);
    final contentWidth = widthQuery - (horizontalPadding * 2);
    double subtitleSize = clampSize(widthQuery * 0.035, 12, 16);
    final titleSize = clampSize(widthQuery * 0.095, 34, 48);
    final bodySize = clampSize(widthQuery * 0.037, 14, 17);
    final previewWidth = clampSize(contentWidth, 280, 520);

    return Column(
      children: [
        Text(
          'Flickframes',
          style: TextStyle(
              fontFamily: 'poppinsbold',
              fontSize: titleSize,
              color: Colors.white),
        ),
        SizedBox(height: clampSize(heightQuery * 0.012, 10, 16)),
        ProjectTechLabels(
          labels: const ['FLUTTER', 'DART', 'ISARDB', 'THEMOVIEDB'],
          fontSize: subtitleSize,
          alignment: WrapAlignment.center,
          spacing: clampSize(widthQuery * 0.035, 12, 20),
        ),
        SizedBox(height: clampSize(heightQuery * 0.018, 12, 20)),
        Text(
            'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
            softWrap: true,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinslight',
              fontSize: bodySize,
            )),
        SizedBox(height: clampSize(heightQuery * 0.025, 18, 28)),
        AnimatedButton(
          text: 'Github',
          textStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinslight',
            fontSize: bodySize,
          ),
          onPress: () =>
              launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
          animatedOn: AnimatedOn.onHover,
          height: clampSize(heightQuery * 0.05, 44, 54),
          width: contentWidth,
          transitionType: TransitionType.CENTER_TB_IN,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedBackgroundColor: Colors.white,
          selectedTextColor: Colors.black,
          borderRadius: 0,
          borderWidth: widthQuery * 0.002,
        ),
        SizedBox(height: clampSize(heightQuery * 0.07, 42, 64)),
        ProjectPreview(
          asset: 'assets/images/project/flickframes.png',
          maxWidth: previewWidth,
          bleedScale: 1.34,
        ),
        SizedBox(height: clampSize(heightQuery * 0.04, 28, 44)),
      ],
    );
  }
}
