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

    late double paddingTop = 0;
    late double pageHeightStroke = 0;
    late bool mobileVersion = false;
    late bool showWhiteStroke = true;

    

    if (widthQuery < 450) {
      showWhiteStroke = false;

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
      } else {}
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
      } else {}
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
      } else {}
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
    } else {}
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
      } else {}
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

      List<double> heightThresholds = [
        500, 530, 560, 610, 660, 750, 800, 840, 900, 970, 1030, 1080, 1150, 1200, 1280, 1320
      ];

      List<double> paddingTopValues = [
        0, 1, 1, 0.9, 0.85, 0.75, 0.6, 0.6, 0.55, 0.55, 0.5, 0.5, 0.45, 0.45, 0.4, 0.37
      ];

      List<double> pageHeightStrokeValues = [
        0, 2, 1.8, 1.7, 1.55, 1.45, 1.45, 1.35, 1.25, 1.055, 1.055, 1, 0.95, 0.90, 0.85, 0.85
      ];

      int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {}
      mobileVersion = false;

    } else if (widthQuery < 1300) {
      List<double> heightThresholds = [
        500, 530, 560, 610, 660, 710, 760, 820, 880, 960, 1020, 1090, 1160, 1250, 1320
      ];

      List<double> paddingTopValues = [
        0, 1, 1, 0.9, 0.85, 0.8, 0.7, 0.65, 0.6, 0.55, 0.5, 0.47, 0.45, 0.43, 0.41
      ];

      List<double> pageHeightStrokeValues = [
        0, 2.2, 2, 1.9, 1.7, 1.6, 1.6, 1.5, 1.4, 1.3, 1.2, 1.1, 1.05, 0.98, 0.9
      ];

      int index = heightThresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {}
      mobileVersion = false;

    } else if (widthQuery > 1400) {
      List<int> thresholds = [
        500, 530, 560, 610, 650, 710, 760, 820, 880, 960, 1020, 1090, 1160, 1250, 1320
      ];

      List<double> paddingTopValues = [
        0, 1, 1, 0.9, 0.85, 0.8, 0.7, 0.65, 0.6, 0.55, 0.5, 0.47, 0.45, 0.43, 0.41
      ];

      List<double> pageHeightStrokeValues = [
        0, 2.2, 2, 1.97, 1.8, 1.8, 1.6, 1.55, 1.45, 1.35, 1.25, 1.15, 1.055, 0.985, 0.905
      ];

      int index = thresholds.indexWhere((threshold) => heightQuery < threshold);

      if (index != -1) {
        paddingTop = heightQuery * paddingTopValues[index];
        pageHeightStroke = heightQuery * pageHeightStrokeValues[index];
      } else {}
      mobileVersion = false;
    }
    
    if (showWhiteStroke) {
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

    return Container(color: Colors.transparent);
    
    
  }
}