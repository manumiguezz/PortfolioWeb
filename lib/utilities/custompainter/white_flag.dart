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
      paddingTop = heightQuery * 0.54;
      pageHeightStroke = heightQuery * 0.9;
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
      List<double> heightThresholds = [
        310, 335, 360, 390, 420, 450, 490, 530, 580, 640, 700, 770, 830, 910, 980, 1050, 1120, 1220, 1340
      ];

      List<double> paddingTopValues = [
        1.15, 1.05, 1.0, 0.9, 0.85, 0.82, 0.80, 0.77, 0.73, 0.68, 0.62, 0.57, 0.54, 0.52, 0.5, 0.48, 0.46, 0.43, 0.40
      ];

      List<double> pageHeightStrokeValues = [
        3.1, 3.0, 2.8, 2.65, 2.45, 2.28, 2.05, 1.85, 1.68, 1.55, 1.38, 1.30, 1.20, 1.08, 1.0, 0.92, 0.86, 0.81, 0.75
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

    } else if (widthQuery < 700) {
      List<double> heightThresholds = [
        500, 550, 650, 760, 880, 1000, 1150, 1220, 9999
      ];

      List<double> paddingTopValues = [
        1, 0.7, 0.65, 0.60, 0.55, 0.50, 0.42, 0.38, 0.30
      ];

      List<double> pageHeightStrokeValues = [
        1.3, 1.8, 1.4, 1.2, 1, 0.8, 0.75, 0.60, 0.60
      ];

      int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {
        paddingTop = 0;
        pageHeightStroke = 0;
      }
      mobileVersion = false;

    } else if (widthQuery < 800) {
      List<double> heightThresholds = [
      500, 550, 580, 630, 690, 740, 820, 890, 960, 1050, 1150, 1240, 1300
    ];

    List<double> paddingTopValues = [
      0.54, 0.80, 0.75, 0.7, 0.65, 0.6, 0.55, 0.5, 0.45, 0.4, 0.35, 0.35, 0.32
    ];

    List<double> pageHeightStrokeValues = [
      0.9, 1.4, 1.3, 1.2, 1.1, 1, 0.9, 0.85, 0.8, 0.75, 0.7, 0.62, 0.60
    ];

    int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

    if (index != -1) {
      paddingTop = heightQuery * paddingTopValues[index];
      pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
    } else {
      
    }
      mobileVersion = false;

    } else if (widthQuery < 900) {
      List<double> heightThresholds = [
        500, 560, 610, 660, 730, 820, 920, 1020, 1110, 1240, 1300
      ];

      List<double> paddingTopValues = [
        0, 1, 0.9, 0.75, 0.65, 0.65, 0.6, 0.5, 0.44, 0.41, 0.38
      ];

      List<double> pageHeightStrokeValues = [
        0, 1.3, 1.4, 1.4, 1.4, 1.2, 1, 0.95, 0.90, 0.82, 0.7
      ];

      int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {
      }
      
      mobileVersion = false;
    } else if (widthQuery < 1000) {
      
      List<double> heightThresholds = [
        500, 550, 610, 660, 730, 820, 920, 1020, 1110, 1240, 1300
      ];

      List<double> paddingTopValues = [
        0, 0.9, 0.9, 0.75, 0.65, 0.65, 0.6, 0.5, 0.44, 0.41, 0.38
      ];

      List<double> pageHeightStrokeValues = [
        0, 1.7, 1.4, 1.4, 1.4, 1.2, 1, 0.95, 0.90, 0.82, 0.7
      ];

      int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {}
      mobileVersion = false;
    } else if (widthQuery < 1100) {
      List<double> heightThresholds = [
        500, 530, 560, 610, 660, 750, 800, 840, 900, 970, 1030, 1080, 1150, 1200, 1280, 1320
      ];

      List<double> paddingTopValues = [
        0, 1, 1, 0.9, 0.85, 0.75, 0.6, 0.6, 0.55, 0.55, 0.5, 0.5, 0.45, 0.45, 0.4, 0.37
      ];

      List<double> pageHeightStrokeValues = [
        0, 2, 1.8, 1.7, 1.5, 1.4, 1.4, 1.3, 1.2, 1.05, 1.05, 0.95, 0.9, 0.85, 0.8, 0.8
      ];

      int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {}

      mobileVersion = false;
    } else if (widthQuery < 1200) {

      if (heightQuery < 500) {
      } else if (heightQuery < 530) {
        paddingTop = heightQuery * 1;
        pageHeightStroke = heightQuery * 2;
      } else if (heightQuery < 560) {
        paddingTop = heightQuery * 1;
        pageHeightStroke = heightQuery * 1.8;
      } else if (heightQuery < 610) {
        paddingTop = heightQuery * 0.9;
        pageHeightStroke = heightQuery * 1.7;
      } else if (heightQuery < 660) {
        paddingTop = heightQuery * 0.85;
        pageHeightStroke = heightQuery * 1.55;
      } else if (heightQuery < 750) {
        paddingTop = heightQuery * 0.75;
        pageHeightStroke = heightQuery * 1.4;
      } else if (heightQuery < 800) {
        paddingTop = heightQuery * 0.6;
        pageHeightStroke = heightQuery * 1.4;
      } else if (heightQuery < 840) {
        paddingTop = heightQuery * 0.6;
        pageHeightStroke = heightQuery * 1.3;
      } else if (heightQuery < 900) {
        paddingTop = heightQuery * 0.55;
        pageHeightStroke = heightQuery * 1.2;
      } else if (heightQuery < 970) {
        paddingTop = heightQuery * 0.55;
        pageHeightStroke = heightQuery * 1.05;
      } else if (heightQuery < 1030) {
        paddingTop = heightQuery * 0.5;
        pageHeightStroke = heightQuery * 1.05;
      } else if (heightQuery < 1080) {
        paddingTop = heightQuery * 0.5;
        pageHeightStroke = heightQuery * 0.95;
      } else if (heightQuery < 1150) {
        paddingTop = heightQuery * 0.45;
        pageHeightStroke = heightQuery * 0.9;
      } else if (heightQuery < 1200) {
        paddingTop = heightQuery * 0.45;
        pageHeightStroke = heightQuery * 0.85;
      } else if (heightQuery < 1280) {
        paddingTop = heightQuery * 0.4;
        pageHeightStroke = heightQuery * 0.8;
      } else if (heightQuery < 1320) {
        paddingTop = heightQuery * 0.37;
        pageHeightStroke = heightQuery * 0.8;
      } else {}

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