import 'package:flutter/material.dart';

class ProjectTechLabels extends StatelessWidget {
  const ProjectTechLabels({
    super.key,
    required this.labels,
    required this.fontSize,
    this.alignment = WrapAlignment.start,
    this.spacing = 18,
    this.runSpacing = 8,
  });

  final List<String> labels;
  final double fontSize;
  final WrapAlignment alignment;
  final double spacing;
  final double runSpacing;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: alignment,
      runAlignment: WrapAlignment.center,
      spacing: spacing,
      runSpacing: runSpacing,
      children: [
        for (final label in labels)
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: fontSize,
              color: Colors.white,
            ),
          ),
      ],
    );
  }
}
