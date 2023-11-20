import 'package:flutter/material.dart';
import 'package:portfolio_web_version/utilities/custompainter/white_flag_down.dart';
import 'package:portfolio_web_version/utilities/custompainter/white_flag_up.dart';
import 'package:portfolio_web_version/widgets/custom_animated_button.dart';

class AboutMeTest extends StatelessWidget {
  const AboutMeTest({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = widthQuery * 0.010;


    return Column(
      children: [

        Transform.translate(
          offset: const Offset(0, 5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(painter: WhiteFlagUp())
          ),
        ),

        Container(
        ),

        Transform.translate(
          offset: const Offset(0, -5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(painter: WhiteFlagDown()),
          ),
        ),
      ],
    );
    
  }
}