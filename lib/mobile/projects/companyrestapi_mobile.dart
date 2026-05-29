import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class CompanyRestApiMobile extends StatelessWidget {
  const CompanyRestApiMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    final microMobile = isMicroMobileWidth(widthQuery);
    final horizontalPadding = microMobile
        ? clampSize(widthQuery * 0.06, 12, 18)
        : clampSize(widthQuery * 0.1, 28, 56);
    final contentWidth = widthQuery - (horizontalPadding * 2);
    double subtitleSize = microMobile
        ? clampSize(widthQuery * 0.04, 9, 11)
        : clampSize(widthQuery * 0.035, 12, 16);
    final titleSize = microMobile
        ? clampSize(widthQuery * 0.12, 26, 34)
        : clampSize(widthQuery * 0.095, 34, 48);
    final bodySize = microMobile
        ? clampSize(widthQuery * 0.045, 11, 13)
        : clampSize(widthQuery * 0.037, 14, 17);
    final previewWidth =
        microMobile ? contentWidth : clampSize(contentWidth, 280, 520);
    final imageTopInset = microMobile
        ? clampSize(heightQuery * 0.03, 18, 30)
        : clampSize(heightQuery * 0.05, 36, 52);
    final imageToDetailsGap = microMobile
        ? clampSize(heightQuery * 0.035, 24, 34)
        : clampSize(heightQuery * 0.07, 54, 76);
    final previewBleedScale = microMobile ? 1.0 : 1.24;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: imageTopInset),
        ProjectPreview(
          asset: 'assets/images/project/companyrestapi.png',
          maxWidth: previewWidth,
          bleedScale: previewBleedScale,
        ),
        SizedBox(height: imageToDetailsGap),
        ProjectTitle(
          text: 'REST API APP',
          fontSize: titleSize,
        ),
        SizedBox(height: clampSize(heightQuery * 0.012, 10, 16)),
        ProjectTechLabels(
          labels: const ['JAVA', 'SPRING BOOT', 'JDBC', 'MYSQL', 'CRUD'],
          fontSize: subtitleSize,
          spacing: clampSize(widthQuery * 0.035, 12, 20),
        ),
        SizedBox(height: clampSize(heightQuery * 0.018, 12, 20)),
        Text(
            "This example of a company REST API utilizes Spring Boot as its foundational framework, and it's mainly built on Java. It seamlessly incorporates a MySQL database through JDBC and Spring Data JPA, reducing the codebase by approximately 70%. Security enhancements, such as Bcrypt-based password encryption, are integrated using Spring Security. The API also includes CRUD methods for smooth database updates via HTTP requests.",
            softWrap: true,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w300,
              fontSize: bodySize,
            )),
        SizedBox(height: clampSize(heightQuery * 0.025, 18, 28)),
        AnimatedButton(
          text: 'Github',
          textStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: bodySize,
          ),
          onPress: () =>
              launchUrl('https://github.com/manumiguezz/SpringbootEventsCRUD'),
          animatedOn: AnimatedOn.onHover,
          height: clampSize(heightQuery * 0.05, 44, 54),
          width: contentWidth,
          transitionType: TransitionType.CENTER_LR_IN,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedTextColor: Colors.black,
          borderRadius: 0,
          borderWidth: microMobile ? 1 : widthQuery * 0.002,
          isReverse: true,
        ),
      ],
    );
  }
}
