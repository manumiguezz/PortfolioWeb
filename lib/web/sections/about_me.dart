import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final widthQuery = MediaQuery.of(context).size.width;
    final heightQuery = MediaQuery.of(context).size.height;
    final flagHeight = clampSize(heightQuery * 0.16, 86, 150);

    return Column(
      children: [
        Transform.translate(
          offset: const Offset(0, 5),
          child: SizedBox(
            height: flagHeight,
            width: widthQuery,
            child: CustomPaint(painter: WhiteFlagUp()),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.white,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isCompact = constraints.maxWidth < kWideDesktopBreakpoint;
              final horizontalPadding = isCompact
                  ? clampSize(widthQuery * 0.06, 28, 56)
                  : clampSize(widthQuery * 0.07, 70, 110);
              final verticalPadding = isCompact
                  ? clampSize(heightQuery * 0.055, 40, 68)
                  : clampSize(heightQuery * 0.09, 64, 96);
              final titleSize = isCompact
                  ? clampSize(widthQuery * 0.067, 42, 68)
                  : clampSize(widthQuery * 0.06, 64, 92);
              final bodySize = clampSize(widthQuery * 0.012, 14, 16);
              final imageWidth = isCompact
                  ? clampSize(widthQuery * 0.28, 180, 340)
                  : clampSize(widthQuery * 0.35, 360, 540);
              final contentGap = isCompact
                  ? clampSize(widthQuery * 0.03, 18, 38)
                  : clampSize(widthQuery * 0.045, 48, 72);

              final textColumn = ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: isCompact ? 620 : 560,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'About me',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: titleSize,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: clampSize(heightQuery * 0.02, 16, 28)),
                    _AboutCopy(fontSize: bodySize),
                    SizedBox(height: clampSize(heightQuery * 0.03, 22, 34)),
                    const CustomAnimatedButton(),
                  ],
                ),
              );

              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1240),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: isCompact ? 4 : 5,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              'assets/images/profile.png',
                              width: imageWidth,
                            ),
                          ),
                        ),
                        SizedBox(width: contentGap),
                        Flexible(
                          flex: isCompact ? 6 : 5,
                          child: textColumn,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -5),
          child: SizedBox(
            height: flagHeight,
            width: widthQuery,
            child: CustomPaint(painter: WhiteFlagDown()),
          ),
        ),
      ],
    );
  }
}

class _AboutCopy extends StatelessWidget {
  const _AboutCopy({required this.fontSize});

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w300,
          fontSize: fontSize,
          height: 1.45,
        ),
        children: const [
          TextSpan(
            text:
                'I’m a Software Developer focused on testing with hands-on Testing Lead experience across Web, Android, and iOS applications.\n\nMy work focuses on building scalable automation coverage, improving testability, validating releases, and creating QA-oriented tooling that helps teams work faster and more reliably. I have experience with Java, Selenium WebDriver, Appium, ACCELQ, REST API testing, SQL validation, Jira, TestRail, and Jenkins.\n\nI’ve worked across SaaS, fintech/payment, healthcare, and mobile/web product environments, combining automation, manual testing, defect management, and a product-minded QA approach to improve delivery quality.',
          ),
        ],
      ),
    );
  }
}
