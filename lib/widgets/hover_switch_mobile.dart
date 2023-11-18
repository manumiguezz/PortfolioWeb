import 'package:flutter/material.dart';
import 'dart:async';

class HoverImageSwitcherMobile extends StatefulWidget {
  final String coloredImagePath;
  final String bwImagePath;
  final double size;
  final Duration resetDuration;

  const HoverImageSwitcherMobile({
    Key? key,
    required this.coloredImagePath,
    required this.bwImagePath,
    required this.size,
    required this.resetDuration,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HoverImageSwitcherMobileState createState() => _HoverImageSwitcherMobileState();
}

class _HoverImageSwitcherMobileState extends State<HoverImageSwitcherMobile> {
  bool isColored = false;
  Timer? _resetTimer;

  @override
  void dispose() {
    _resetTimer?.cancel();
    super.dispose();
  }

  void _resetToOriginal() {
    setState(() {
      isColored = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isColored = !isColored;
        });

        _resetTimer?.cancel();
        _resetTimer = Timer(widget.resetDuration, () {
          _resetToOriginal();
        });
      },
      child: SizedBox(
        width: widget.size,
        child: Center(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: Image.asset(
              isColored ? widget.coloredImagePath : widget.bwImagePath,
              key: ValueKey<bool>(isColored),
            ),
          ),
        ),
      ),
    );
  }
}