import 'package:flutter/material.dart';
import 'package:portfolio_web_version/data/stack_technologies.dart';
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
    final itemWidth = clampSize(widthQuery * 0.095, 96, 128);
    final horizontalPadding = clampSize(widthQuery * 0.12, 48, 180);
    final itemGap = clampSize(widthQuery * 0.03, 24, 44);
    final rowGap = clampSize(heightQuery * 0.045, 28, 46);
    final sectionGap = clampSize(heightQuery * 0.075, 44, 72);
    final groupGap = clampSize(heightQuery * 0.07, 44, 72);
    final groupTitleSize = clampSize(widthQuery * 0.018, 18, 26);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1260),
          child: Column(
            children: [
              Text(
                overflow: TextOverflow.ellipsis,
                'My Stack',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: clampSize(widthQuery * 0.07, 52, 96)),
              ),
              SizedBox(height: sectionGap),
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
                  groupTitleGap: clampSize(heightQuery * 0.025, 18, 28),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
