import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import 'package:portfolio_web_version/exports/widgets.dart';

class MyStackMobile extends StatelessWidget {
  const MyStackMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    final microMobile = isMicroMobileWidth(widthQuery);
    final horizontalPadding = microMobile
        ? clampSize(widthQuery * 0.06, 12, 18)
        : clampSize(widthQuery * 0.1, 28, 56);
    final contentWidth = widthQuery - (horizontalPadding * 2);
    double stackSize = microMobile
        ? clampSize(widthQuery * 0.13, 28, 36)
        : clampSize(widthQuery * 0.16, 58, 94);
    double nameSize = microMobile
        ? clampSize(widthQuery * 0.036, 8, 10)
        : clampSize(widthQuery * 0.032, 12, 16);
    final itemGap = microMobile
        ? clampSize(widthQuery * 0.025, 4, 8)
        : clampSize(widthQuery * 0.045, 16, 28);
    final itemWidth = microMobile
        ? (contentWidth - (itemGap * 2)) / 3
        : clampSize(widthQuery * 0.22, 82, 118);
    final rowGap = microMobile
        ? clampSize(heightQuery * 0.022, 18, 24)
        : clampSize(heightQuery * 0.05, 28, 44);
    final titleSize = microMobile
        ? clampSize(widthQuery * 0.19, 40, 48)
        : clampSize(widthQuery * 0.14, 48, 76);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'My Stack',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: titleSize),
              ),
            ),
          ),
          SizedBox(
              height: microMobile
                  ? clampSize(heightQuery * 0.014, 10, 16)
                  : clampSize(heightQuery * 0.025, 18, 28)),
          SizedBox(
            width: double.infinity,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Tap on them!',
                style: TextStyle(
                    color: const Color.fromARGB(255, 89, 89, 89),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: microMobile
                        ? clampSize(widthQuery * 0.035, 9, 11)
                        : clampSize(widthQuery * 0.028, 11, 14)),
              ),
            ),
          ),
          SizedBox(
              height: microMobile
                  ? clampSize(heightQuery * 0.025, 18, 26)
                  : clampSize(heightQuery * 0.045, 28, 44)),
          Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: itemGap,
            runSpacing: rowGap,
            children: [
              for (final tech in _stackItems)
                SizedBox(
                  width: itemWidth,
                  child: TechStack(
                    asset: tech.asset,
                    techName: tech.name,
                    stackSize: stackSize,
                    nameSize: nameSize,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

const _stackItems = [
  _StackItem('java.png', 'Java'),
  _StackItem('android.png', 'Android'),
  _StackItem('dart.png', 'Dart'),
  _StackItem('html.png', 'HTML'),
  _StackItem('css.png', 'CSS'),
  _StackItem('mysql.png', 'MySQL'),
  _StackItem('spring.png', 'Spring'),
  _StackItem('javafx.png', 'JavaFX'),
  _StackItem('hibernate.png', 'Hibernate'),
  _StackItem('springboot.png', 'Spring Boot'),
  _StackItem('flutter.png', 'Flutter'),
  _StackItem('git.png', 'Git'),
  _StackItem('postman.png', 'Postman'),
  _StackItem('maven.png', 'Maven'),
  _StackItem('thymeleaf.png', 'Thymeleaf'),
  _StackItem('docker.png', 'Docker'),
  _StackItem('firebase.png', 'Firebase'),
  _StackItem('jwt.png', 'JWT'),
];

class _StackItem {
  const _StackItem(this.asset, this.name);

  final String asset;
  final String name;
}
