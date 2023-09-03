import 'package:flutter/material.dart';
import 'package:portfolio_web_version/utilities/utilities.dart';

class WhiteFlagSection extends StatelessWidget {
  const WhiteFlagSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double pageWidth = MediaQuery.of(context).size.width;
     final double pageHeight = MediaQuery.of(context).size.height;
    
    return Padding(
      padding: const EdgeInsets.only(top: 450),
      child: SizedBox(
        height: pageHeight * 1.7,
        width: pageWidth,
        child: CustomPaint(
          painter: WhiteStrokePainter(),
        ),
      ),
    );
  }
}