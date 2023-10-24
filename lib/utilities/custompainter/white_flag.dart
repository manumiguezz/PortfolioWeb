import 'package:flutter/material.dart';
import 'package:portfolio_web_version/utilities/utilities.dart';

class WhiteFlagSection extends StatelessWidget {

  const WhiteFlagSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final double widthQuery = MediaQuery.of(context).size.width;
    final double heightQuery = MediaQuery.of(context).size.height;

    late double paddingTop = 100;
    late double pageHeightStroke = 0.9;
    late bool mobileVersion = false;

    if (widthQuery < 300) {
      paddingTop = heightQuery * 0.44;
      pageHeightStroke = heightQuery * 0;
      mobileVersion = true;
    } else if (widthQuery < 400) {
      paddingTop = heightQuery * 0.47;
      pageHeightStroke = heightQuery * 0;
    } else if (widthQuery < 600) {
      paddingTop = heightQuery * 0.38;
      pageHeightStroke = heightQuery * 1.35;
    } else if (widthQuery < 800) {
      paddingTop = heightQuery * 0.58;
      pageHeightStroke = heightQuery * 0.5;
    } else if (widthQuery < 1000) {
      paddingTop = heightQuery * 0.66;
      pageHeightStroke = heightQuery * 0;
    } else if (widthQuery < 1200) {
      paddingTop = heightQuery * 0.66;
      pageHeightStroke = heightQuery * 0;
    }
    
    
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: SizedBox(
        height: pageHeightStroke,
        width: widthQuery,
        child: CustomPaint(
          painter: WhiteStrokePainter(mobileVersion: mobileVersion),
        ),
      ),
    );
  }
}