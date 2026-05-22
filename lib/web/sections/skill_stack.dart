import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import 'package:portfolio_web_version/exports/widgets.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double stackSize = clampSize(widthQuery * 0.07, 56, 96);
    double nameSize = clampSize(widthQuery * 0.010, 12, 15);
    final itemWidth = clampSize(widthQuery * 0.105, 96, 132);
    final horizontalPadding = clampSize(widthQuery * 0.12, 48, 180);
    final itemGap = clampSize(widthQuery * 0.035, 24, 52);
    final rowGap = clampSize(heightQuery * 0.06, 32, 56);

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
                fontSize: clampSize(widthQuery * 0.07, 52, 96)),
          ),
          SizedBox(height: clampSize(heightQuery * 0.075, 44, 72)),
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
