import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    final microMobile = isMicroMobileWidth(widthQuery);
    double fontSize = microMobile
        ? clampSize(widthQuery * 0.043, 12, 13)
        : clampSize(widthQuery * 0.037, 14, 18);
    final flagHeight = microMobile
        ? clampSize(heightQuery * 0.13, 64, 100)
        : clampSize(heightQuery * 0.16, 80, 130);
    final tightMobile = widthQuery < 400;
    final horizontalPadding = microMobile
        ? clampSize(widthQuery * 0.07, 16, 22)
        : tightMobile
            ? clampSize(widthQuery * 0.075, 22, 28)
            : clampSize(widthQuery * 0.1, 28, 56);
    final contentWidth = widthQuery - (horizontalPadding * 2);
    final imageWidth = microMobile
        ? clampSize(contentWidth * 0.6, 108, 132)
        : tightMobile
            ? clampSize(contentWidth * 0.46, 118, 150)
            : clampSize(contentWidth * 0.48, 120, 190);
    final headerGap = clampSize(contentWidth * 0.04, 10, 18);
    final titleSize = microMobile
        ? clampSize(widthQuery * 0.14, 30, 38)
        : clampSize(widthQuery * 0.108, 36, 62);
    final paragraphTextAlign = tightMobile ? TextAlign.left : TextAlign.justify;
    final aboutTextStyle = TextStyle(
      color: Colors.black,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: fontSize,
      height: 1.38,
    );
    final headerTextStyle = aboutTextStyle.copyWith(
      fontSize: clampSize(widthQuery * 0.032, 13, 15),
      height: 1.3,
    );
    final introTextStyle = tightMobile ? aboutTextStyle : headerTextStyle;
    const openingCopy =
        'I’m a Software Developer focused on testing with hands-on Testing Lead experience across Web, Android, and iOS applications.';
    const bodyCopy =
        'My work focuses on building scalable automation coverage, improving testability, validating releases, and creating QA-oriented tooling that helps teams work faster and more reliably. I have experience with Java, Selenium WebDriver, Appium, ACCELQ, REST API testing, SQL validation, Jira, TestRail, and Jenkins.\n\nI’ve worked across SaaS, fintech/payment, healthcare, and mobile/web product environments, combining automation, manual testing, defect management, and a product-minded QA approach to improve delivery quality.';

    return Column(
      children: [
        Transform.translate(
          offset: const Offset(0, 5),
          child: SizedBox(
            height: flagHeight,
            width: widthQuery,
            child: CustomPaint(
              painter: WhiteFlagUpMobile(),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: clampSize(heightQuery * 0.03, 20, 32),
                ),
                SizedBox(
                  width: contentWidth,
                  child: microMobile
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                'assets/images/profile.png',
                                width: imageWidth,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            SizedBox(
                              height: clampSize(heightQuery * 0.018, 12, 18),
                            ),
                            Text(
                              'About\nMe',
                              style: TextStyle(
                                  height: 0.9,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: titleSize),
                            ),
                            SizedBox(
                              height: clampSize(heightQuery * 0.022, 14, 20),
                            ),
                            Text(
                              openingCopy,
                              textAlign: paragraphTextAlign,
                              textWidthBasis: TextWidthBasis.parent,
                              style: introTextStyle,
                            ),
                          ],
                        )
                      : tightMobile
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/profile.png',
                                      width: imageWidth,
                                      fit: BoxFit.fitWidth,
                                    ),
                                    SizedBox(width: headerGap),
                                    Expanded(
                                      child: Text(
                                        'About\nMe',
                                        style: TextStyle(
                                            height: 0.9,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: titleSize),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      clampSize(heightQuery * 0.022, 14, 20),
                                ),
                                Text(
                                  openingCopy,
                                  textAlign: paragraphTextAlign,
                                  textWidthBasis: TextWidthBasis.parent,
                                  style: introTextStyle,
                                ),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/profile.png',
                                  width: imageWidth,
                                  fit: BoxFit.fitWidth,
                                ),
                                SizedBox(
                                  width: headerGap,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'About\nMe',
                                        style: TextStyle(
                                            height: 0.9,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: titleSize),
                                      ),
                                      SizedBox(
                                        height: clampSize(
                                            heightQuery * 0.018, 12, 18),
                                      ),
                                      Text(
                                        openingCopy,
                                        textAlign: paragraphTextAlign,
                                        textWidthBasis: TextWidthBasis.parent,
                                        style: introTextStyle,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                ),
                SizedBox(height: clampSize(heightQuery * 0.025, 18, 30)),
                SizedBox(
                  width: contentWidth,
                  child: Text(
                    bodyCopy,
                    textAlign: paragraphTextAlign,
                    textWidthBasis: TextWidthBasis.parent,
                    style: aboutTextStyle,
                  ),
                ),
                SizedBox(
                  height: clampSize(heightQuery * 0.04, 24, 38),
                ),
                CustomAnimatedButton(width: contentWidth),
                SizedBox(
                  height: clampSize(heightQuery * 0.04, 24, 38),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -5),
          child: SizedBox(
            height: flagHeight,
            width: widthQuery,
            child: CustomPaint(
              painter: WhiteFlagDownMobile(),
            ),
          ),
        ),
      ],
    );
  }
}
