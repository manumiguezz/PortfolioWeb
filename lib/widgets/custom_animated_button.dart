import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import 'package:portfolio_web_version/widgets/cv_viewer_dialog.dart';

class CustomAnimatedButton extends StatefulWidget {
  const CustomAnimatedButton({
    super.key,
    this.width,
  });

  final double? width;

  @override
  State<CustomAnimatedButton> createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Resume button');

  @override
  void dispose() {
    _buttonFocusNode.dispose();
    super.dispose();
  }

  Future<void> _openCvViewer() async {
    await showCvViewerDialog(context);

    if (mounted) {
      _buttonFocusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    final compact = isMobileWidth(widthQuery);
    final buttonWidth = widget.width ??
        (compact
            ? clampSize(widthQuery * 0.68, 220, 320)
            : clampSize(widthQuery * 0.13, 150, 220));

    return Focus(
      focusNode: _buttonFocusNode,
      child: Semantics(
        button: true,
        label: 'Open Curriculum Vitae',
        child: AnimatedButton(
          text: 'My Resume',
          textStyle: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: compact
                ? clampSize(widthQuery * 0.045, 16, 24)
                : clampSize(widthQuery * 0.012, 14, 18),
          ),
          onPress: _openCvViewer,
          animatedOn: AnimatedOn.onHover,
          height: compact
              ? clampSize(heightQuery * 0.05, 44, 54)
              : clampSize(heightQuery * 0.065, 48, 64),
          width: buttonWidth,
          transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
          borderColor: Colors.black,
          selectedBackgroundColor: Colors.black,
          selectedTextColor: Colors.white,
          borderRadius: 0,
          borderWidth: compact
              ? clampSize(widthQuery * 0.005, 2, 3)
              : clampSize(widthQuery * 0.002, 2, 3),
        ),
      ),
    );
  }
}
