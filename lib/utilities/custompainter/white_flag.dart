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

    if (heightQuery < 100) {

    }

    if (widthQuery < 350) {
      paddingTop = heightQuery * 0.44;
      pageHeightStroke = heightQuery * 1.60;
      mobileVersion = true;
    } else if (widthQuery < 400) {
      paddingTop = heightQuery * 0.43;
      pageHeightStroke = heightQuery * 1.42;
      mobileVersion = true;
    } else if (widthQuery < 500) {
      paddingTop = heightQuery * 0.48;
      pageHeightStroke = heightQuery * 1.26;
      mobileVersion = true;
    } else if (widthQuery < 600) {
      paddingTop = heightQuery * 0.49;
      pageHeightStroke = heightQuery * 1.25;
      mobileVersion = true;
    } else if (widthQuery < 700) {
      paddingTop = heightQuery * 0.54;
      pageHeightStroke = heightQuery * 0.8;
    } else if (widthQuery < 800) {
      paddingTop = heightQuery * 0.54;
      pageHeightStroke = heightQuery * 0.9;
    } else if (widthQuery < 900) {
      paddingTop = heightQuery * 0.58;
      pageHeightStroke = heightQuery * 1.12;
    } else if (widthQuery < 1000) {
      paddingTop = heightQuery * 0.60;
      pageHeightStroke = heightQuery * 1.1;
    } else if (widthQuery < 1100) {
      paddingTop = heightQuery * 0.66;
      pageHeightStroke = heightQuery * 1.35;
    } else if (widthQuery < 1200) {
      paddingTop = heightQuery * 0.66;
      pageHeightStroke = heightQuery * 1.35;
    } else if (widthQuery < 1300) {
      paddingTop = heightQuery * 0.68;
      pageHeightStroke = heightQuery * 1.50;
    } else if (widthQuery > 1300) {
      paddingTop = heightQuery * 0.68;
      pageHeightStroke = heightQuery * 1.58;
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