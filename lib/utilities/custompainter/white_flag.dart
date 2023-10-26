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
      
    } else if (heightQuery < 200) {

    } else if (heightQuery < 300) {

    } else if (heightQuery < 400) {

    } else if (heightQuery < 500) {

    } else if (heightQuery < 600) {

    } else if (heightQuery < 700) {

    } else if (heightQuery < 800) {

    } else if (heightQuery < 900) {

    } else if (heightQuery < 1000) {

    }

    if (widthQuery < 350) {
      
      List<double> paddingTopValues = [
        0.60, 0.60, 0.60, 0.55, 0.53, 0.52, 0.49, 0.46, 0.44, 0.41, 0.388, 0.37,
      ];

      List<double> pageHeightStrokeValues = [
        4, 2.9, 2.625, 2.405, 2.25, 2.05, 1.89, 1.78, 1.70, 1.60, 1.49, 1.38,
      ];

      for (int i = 0; i < paddingTopValues.length; i++) {
        if (heightQuery < 400 + i * 50) {
          paddingTop = heightQuery * paddingTopValues[i];
          pageHeightStroke = heightQuery * pageHeightStrokeValues[i];
          break;
        }
      }
      
      mobileVersion = true;
    } else if (widthQuery < 400) {

      List<double> heightThresholds = [
        420, 450, 470, 500, 540, 580, 610, 650, 690, 740, 790, 850, 920, 980, 1050, 1100
      ];

      List<double> paddingTopValues = [
        0.60, 0.58, 0.56, 0.54, 0.52, 0.50, 0.48, 0.46, 0.44, 0.43, 0.42, 0.41, 0.4, 0.385, 0.37, 0.36
      ];

      List<double> pageHeightStrokeValues = [
        2.8, 2.62, 2.5, 2.35, 2.2, 2.05, 1.92, 1.82, 1.72, 1.60, 1.48, 1.38, 1.26, 1.18, 1.12, 1
      ];

      for (int i = 0; i < heightThresholds.length; i++) {
        if (heightQuery < heightThresholds[i]) {
          paddingTop = heightQuery * paddingTopValues[i];
          pageHeightStroke = heightQuery * pageHeightStrokeValues[i];
          break;
        } else {
          paddingTop = heightQuery * 0.35;
          pageHeightStroke = heightQuery * 1;
        }
      }
      
      mobileVersion = true;
    } else if (widthQuery < 500) {
      List<double> heightThresholds = [
        500, 540, 590, 630, 680, 740, 810, 870, 930, 990, 1060, 1120, 1200
      ];

      List<double> paddingTopValues = [
        0.685, 0.63, 0.62, 0.58, 0.56, 0.52, 0.50, 0.47, 0.44, 0.43, 0.415, 0.40, 0.385
      ];

      List<double> pageHeightStrokeValues = [
        2, 2.02, 1.83, 1.70, 1.60, 1.48, 1.345, 1.22, 1.18, 1.10, 1.02, 0.96, 0.90
      ];

      int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {
        paddingTop = 0;
        pageHeightStroke = 0;
      }
      
      mobileVersion = true;
    } else if (widthQuery < 600) {
        if (heightQuery < 100) {
      
        } else if (heightQuery < 200) {
          paddingTop = heightQuery * 0.49;
          pageHeightStroke = heightQuery * 1.25;
        } else if (heightQuery < 300) {

        } else if (heightQuery < 400) {

        } else if (heightQuery < 500) {

        } else if (heightQuery < 600) {

        } else if (heightQuery < 700) {

        } else if (heightQuery < 800) {

        } else if (heightQuery < 900) {

        } else if (heightQuery < 1000) {

        }
      
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