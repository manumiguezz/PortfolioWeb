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
    late double pageHeightStroke = 0.5;
    late bool mobileVersion = false;

    if (MediaQuery.of(context).size.width > 1300){
      paddingTop = heightQuery * 0.66;
      pageHeightStroke = heightQuery * 0.0022;
    } else if (MediaQuery.of(context).size.width > 1000){
      paddingTop = heightQuery * 0.66;
      pageHeightStroke = heightQuery * 0.0019;
    } else if (MediaQuery.of(context).size.width > 800){
      paddingTop = heightQuery * 0.58;
      pageHeightStroke = heightQuery * 0.0015;
    } else if (MediaQuery.of(context).size.width > 600){
      paddingTop = heightQuery * 0.49;
      pageHeightStroke = heightQuery * 0.0013;
    } else if (MediaQuery.of(context).size.width > 400){
      paddingTop = heightQuery * 0.47;
      pageHeightStroke = heightQuery * 0.001;
    } else if (MediaQuery.of(context).size.width > 350){
      paddingTop = 340;
      pageHeightStroke = 1.42;
      mobileVersion = true;
    }
    
    
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: SizedBox(
        height: heightQuery * pageHeightStroke,
        width: widthQuery,
        child: CustomPaint(
          painter: WhiteStrokePainter(mobileVersion: mobileVersion),
        ),
      ),
    );
  }
}