import 'package:flutter/material.dart';

import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class NoteshopAppMobile extends StatelessWidget {
  const NoteshopAppMobile({super.key});

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
          'Noteshop',
          style: TextStyle(
              fontFamily: 'poppinsbold',
              fontSize: titleSize,
              color: Colors.white),
        ),
        SizedBox(height: clampSize(heightQuery * 0.012, 10, 16)),
        ProjectTechLabels(
          labels: const ['FLUTTER', 'DART', 'JWT', 'HTTP', 'RESTAPI'],
          fontSize: subtitleSize,
          alignment: WrapAlignment.center,
          spacing: clampSize(widthQuery * 0.035, 12, 20),
        ),
        SizedBox(height: clampSize(heightQuery * 0.018, 12, 20)),
        Text(
            'Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
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
              launchUrl('https://github.com/manumiguezz/NoteShopApp'),
          animatedOn: AnimatedOn.onHover,
          height: clampSize(heightQuery * 0.05, 44, 54),
          width: contentWidth,
          transitionType: TransitionType.LEFT_TO_RIGHT,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedTextColor: Colors.black,
          isReverse: true,
          borderRadius: 0,
          borderWidth: widthQuery * 0.002,
        ),
        SizedBox(height: clampSize(heightQuery * 0.07, 42, 64)),
        ProjectPreview(
          asset: 'assets/images/project/noteshop.png',
          maxWidth: previewWidth,
          bleedScale: 1.34,
        ),
        SizedBox(height: clampSize(heightQuery * 0.04, 28, 44)),
      ],
    );
  }
}
