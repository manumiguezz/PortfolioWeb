import 'package:flutter/material.dart';
import 'package:portfolio_web_version/utilities/utilities.dart';

class WhiteFlagSection extends StatelessWidget {

  const WhiteFlagSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    late double paddingTop = 100;
    late double pageHeightStroke = 0.5;
    late bool mobileVersion = false;

    if (MediaQuery.of(context).size.width > 1300){
      paddingTop = 450;
      pageHeightStroke = 1.70;
    } else if (MediaQuery.of(context).size.width > 1000){
      paddingTop = 400;
      pageHeightStroke = 1.70;
    } else if (MediaQuery.of(context).size.width > 800){
      paddingTop = 390;
      pageHeightStroke = 1.20;
    } else if (MediaQuery.of(context).size.width > 600){
      paddingTop = 340;
      pageHeightStroke = 1;
    } else if (MediaQuery.of(context).size.width > 400){
      paddingTop = 340;
      pageHeightStroke = 0.7;
    } else if (MediaQuery.of(context).size.width > 350){
      paddingTop = 340;
      pageHeightStroke = 1.42;
      mobileVersion = true;
    }

    final double pageWidth = MediaQuery.of(context).size.width;
     final double pageHeight = MediaQuery.of(context).size.height;
    
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: SizedBox(
        height: pageHeight * pageHeightStroke,
        width: pageWidth,
        child: CustomPaint(
          painter: WhiteStrokePainter(mobileVersion: mobileVersion),
        ),
      ),
    );
  }
}