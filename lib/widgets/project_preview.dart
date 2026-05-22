import 'package:flutter/material.dart';

class ProjectPreview extends StatelessWidget {
  const ProjectPreview({
    super.key,
    required this.asset,
    required this.maxWidth,
    required this.bleedScale,
    this.alignment = Alignment.center,
  });

  final String asset;
  final double maxWidth;
  final double bleedScale;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: maxWidth),
      // Mockups keep a responsive layout slot, but paint beyond that slot so
      // section and viewport edges create the original peek-in composition.
      child: Transform.scale(
        scale: bleedScale,
        alignment: alignment,
        child: Image.asset(asset),
      ),
    );
  }
}
