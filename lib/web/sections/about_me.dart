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
                        fontFamily: 'poppinsbold',
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
    final boldStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
    );

    return RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'poppinslight',
          fontSize: fontSize,
          height: 1.45,
        ),
        children: [
          const TextSpan(text: 'As an aspiring '),
          TextSpan(text: 'backend software developer', style: boldStyle),
          const TextSpan(text: ', I have a deep passion for '),
          TextSpan(text: 'Java', style: boldStyle),
          const TextSpan(
            text:
                ' development, constantly refining my skills and knowledge through continuous learning. I am dedicated to mastering ',
          ),
          TextSpan(text: 'object-oriented programming', style: boldStyle),
          const TextSpan(
            text: ' and can efficiently work with other languages like ',
          ),
          TextSpan(text: 'Dart', style: boldStyle),
          const TextSpan(text: ', as well as web technologies such as '),
          TextSpan(text: 'HTML', style: boldStyle),
          const TextSpan(text: ' and '),
          TextSpan(text: 'CSS', style: boldStyle),
          const TextSpan(text: '.\n\nI also love frameworks like '),
          TextSpan(text: 'Spring Boot', style: boldStyle),
          const TextSpan(text: ', '),
          TextSpan(text: 'Flutter', style: boldStyle),
          const TextSpan(text: ', '),
          TextSpan(text: 'Hibernate', style: boldStyle),
          const TextSpan(text: ', and '),
          TextSpan(text: 'JavaFX', style: boldStyle),
          const TextSpan(
            text:
                ', which allow me to contribute to a wide range of projects that fuel my enthusiasm. I’ve developed ',
          ),
          TextSpan(text: 'RESTful APIs', style: boldStyle),
          const TextSpan(text: ' with '),
          TextSpan(text: 'CRUD', style: boldStyle),
          const TextSpan(
            text:
                ' operations and established reliable database connections. Additionally, I’m proficient in using dependency managers like ',
          ),
          TextSpan(text: 'Maven', style: boldStyle),
          const TextSpan(text: ' and '),
          TextSpan(text: 'Gradle', style: boldStyle),
          const TextSpan(
            text:
                ' to ensure efficient project management and organization.\n\nBeyond my technical expertise, I have strong ',
          ),
          TextSpan(text: 'communication', style: boldStyle),
          const TextSpan(
            text:
                ' skills enabling seamless collaboration within teams. I quickly adapt to new languages and tools, allowing me to contribute effectively to diverse projects. My passion for design extends beyond visuals, I approach design from a broader and more abstract perspective, striving to structure and solve problems methodically. By considering every detail and organizing each step carefully, I ensure that projects progress as smoothly and successfully as possible.',
          ),
        ],
      ),
    );
  }
}
