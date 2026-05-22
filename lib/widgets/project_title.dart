import 'package:flutter/material.dart';

class ProjectTitle extends StatelessWidget {
  const ProjectTitle({
    super.key,
    required this.text,
    required this.fontSize,
    this.alignment = Alignment.centerLeft,
  });

  final String text;
  final double fontSize;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FittedBox(
        alignment: alignment,
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          maxLines: 1,
          softWrap: false,
          style: TextStyle(
            fontFamily: 'poppinsbold',
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
