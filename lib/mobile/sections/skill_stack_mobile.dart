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
    double stackSize = clampSize(widthQuery * 0.16, 58, 94);
    double nameSize = clampSize(widthQuery * 0.032, 12, 16);
    final horizontalPadding = clampSize(widthQuery * 0.1, 28, 56);
    final itemWidth = clampSize(widthQuery * 0.22, 82, 118);
    final itemGap = clampSize(widthQuery * 0.045, 16, 28);
    final rowGap = clampSize(heightQuery * 0.05, 28, 44);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          Text(
            overflow: TextOverflow.ellipsis,
            'My Stack',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'poppinsbold',
                fontSize: clampSize(widthQuery * 0.14, 48, 76)),
          ),
          SizedBox(height: clampSize(heightQuery * 0.025, 18, 28)),
          Text(
            overflow: TextOverflow.ellipsis,
            'Tap on them!',
            style: TextStyle(
                color: const Color.fromARGB(255, 89, 89, 89),
                fontFamily: 'poppinsbold',
                fontSize: clampSize(widthQuery * 0.028, 11, 14)),
          ),
          SizedBox(height: clampSize(heightQuery * 0.045, 28, 44)),
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
