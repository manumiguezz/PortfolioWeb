import 'package:flutter/material.dart';

class ResponsiveImage extends StatelessWidget {
    final String imageAsset;
    final double scaleFactor;
  
  const ResponsiveImage({
    super.key, 
    required this.imageAsset, 
    this.scaleFactor = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    final imageSize = screenWidth * scaleFactor;

    return Image.asset(imageAsset,
      width: imageSize,
      height: imageSize,
      fit: BoxFit.contain,
    );
  }
}