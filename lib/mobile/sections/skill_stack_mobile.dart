import 'package:flutter/material.dart';
import 'package:portfolio_web_version/data/stack_technologies.dart';
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
        ? clampSize(heightQuery * 0.018, 14, 22)
        : clampSize(heightQuery * 0.035, 24, 36);
    final titleSize = microMobile
        ? clampSize(widthQuery * 0.19, 40, 48)
        : clampSize(widthQuery * 0.14, 48, 76);
    final groupGap = microMobile
        ? clampSize(heightQuery * 0.04, 28, 36)
        : clampSize(heightQuery * 0.055, 36, 52);
    final groupTitleSize = microMobile
        ? clampSize(widthQuery * 0.052, 13, 16)
        : clampSize(widthQuery * 0.042, 16, 22);
    final groupTitleGap = microMobile
        ? clampSize(heightQuery * 0.014, 10, 14)
        : clampSize(heightQuery * 0.022, 14, 20);

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
                  ? clampSize(heightQuery * 0.025, 18, 26)
                  : clampSize(heightQuery * 0.04, 28, 40)),
          for (var i = 0; i < stackTechnologyGroups.length; i++) ...[
            if (i > 0) SizedBox(height: groupGap),
            TechStackGroup(
              group: stackTechnologyGroups[i],
              stackSize: stackSize,
              nameSize: nameSize,
              itemWidth: itemWidth,
              itemGap: itemGap,
              rowGap: rowGap,
              groupTitleSize: groupTitleSize,
              groupTitleGap: groupTitleGap,
              maxColumns: 3,
            ),
          ],
        ],
      ),
    );
  }
}
