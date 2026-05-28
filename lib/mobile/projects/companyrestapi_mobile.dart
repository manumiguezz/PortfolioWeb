import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class CompanyRestApiMobile extends StatelessWidget {
  const CompanyRestApiMobile({super.key});

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
          'REST API APP',
          style: TextStyle(
              fontFamily: 'poppinsbold',
              fontSize: titleSize,
              color: Colors.white),
        ),
        SizedBox(height: clampSize(heightQuery * 0.012, 10, 16)),
        ProjectTechLabels(
          labels: const ['JAVA', 'SPRING BOOT', 'JDBC', 'MYSQL', 'CRUD'],
          fontSize: subtitleSize,
          alignment: WrapAlignment.center,
          spacing: clampSize(widthQuery * 0.035, 12, 20),
        ),
        SizedBox(height: clampSize(heightQuery * 0.018, 12, 20)),
        Text(
            "This example of a company REST API utilizes Spring Boot as its foundational framework, and it's mainly built on Java. It seamlessly incorporates a MySQL database through JDBC and Spring Data JPA, reducing the codebase by approximately 70%. Security enhancements, such as Bcrypt-based password encryption, are integrated using Spring Security. The API also includes CRUD methods for smooth database updates via HTTP requests.",
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
              launchUrl('https://github.com/manumiguezz/SpringbootEventsCRUD'),
          animatedOn: AnimatedOn.onHover,
          height: clampSize(heightQuery * 0.05, 44, 54),
          width: contentWidth,
          transitionType: TransitionType.CENTER_LR_IN,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedTextColor: Colors.black,
          borderRadius: 0,
          borderWidth: widthQuery * 0.002,
          isReverse: true,
        ),
        SizedBox(height: clampSize(heightQuery * 0.07, 42, 64)),
        ProjectPreview(
          asset: 'assets/images/project/companyrestapi.png',
          maxWidth: previewWidth,
          bleedScale: 1.24,
        ),
        SizedBox(height: clampSize(heightQuery * 0.04, 28, 44)),
      ],
    );
  }
}
