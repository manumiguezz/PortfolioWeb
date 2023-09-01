import 'package:flutter/material.dart';

class HoverImageSwitcher extends StatefulWidget {
  final String coloredImagePath;
  final String bwImagePath;

  const HoverImageSwitcher({
    super.key, 
    required this.coloredImagePath,
    required this.bwImagePath,
  });

  @override
  // ignore: library_private_types_in_public_api
  _HoverImageSwitcherState createState() => _HoverImageSwitcherState();
}

class _HoverImageSwitcherState extends State<HoverImageSwitcher> {
  bool isColored = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isColored = true;
        });
      },
      onExit: (_) {
        setState(() {
          isColored = false;
        });
      },
      child: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: Image.asset(
            isColored ? widget.coloredImagePath : widget.bwImagePath,
            key: ValueKey<bool>(isColored),
            scale: 9,
          ),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      ),
    );
  }
}






