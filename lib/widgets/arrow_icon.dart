import 'package:flutter/material.dart';

class ArrowIcon extends StatefulWidget {
  const ArrowIcon({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ArrowIconState createState() => _ArrowIconState();
}

class _ArrowIconState extends State<ArrowIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
    final curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _animation = Tween(begin: -10.0, end: 10.0).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(0.0, _animation.value),
          child: child,
        );
      },
      child: Container(
        alignment: Alignment.bottomCenter,
        child: Icon(
          Icons.keyboard_arrow_down_rounded,
          size: widthQuery * 0.2,
          color: Colors.white,
        ),
      ),
    );
  }
}