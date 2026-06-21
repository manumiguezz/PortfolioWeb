import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import 'package:portfolio_web_version/widgets/hero_reveal_notifier_stub.dart'
    if (dart.library.html) 'package:portfolio_web_version/widgets/hero_reveal_notifier_web.dart';

class PortfolioPageReveal extends StatefulWidget {
  const PortfolioPageReveal({
    super.key,
    required this.child,
    this.onRevealComplete,
  });

  final Widget child;
  final VoidCallback? onRevealComplete;

  @override
  State<PortfolioPageReveal> createState() => _PortfolioPageRevealState();
}

class _PortfolioPageRevealState extends State<PortfolioPageReveal>
    with SingleTickerProviderStateMixin {
  static const double _stripeOverlap = 5;

  late final AnimationController _controller;
  late final Animation<double> _animation;
  HeroRevealListenerHandle? _heroRevealListener;
  bool _isRevealStarted = false;
  bool _isRevealComplete = false;
  bool _notifiedRevealComplete = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1840),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: const Cubic(0.68, 0, 0.18, 1),
    );
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed && mounted) {
        setState(() {
          _isRevealComplete = true;
        });
        _notifyRevealComplete();
      }
    });

    _isRevealStarted = isHeroRevealStarted();
    if (_isRevealStarted) {
      _controller.value = 1;
      _isRevealComplete = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _notifyRevealComplete();
        }
      });
    } else {
      _heroRevealListener = addHeroRevealListener(_handleHeroRevealStarted);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_isRevealStarted &&
        !_isRevealComplete &&
        MediaQuery.disableAnimationsOf(context)) {
      _completeRevealImmediately();
    }
  }

  void _handleHeroRevealStarted() {
    if (!mounted || _isRevealStarted) {
      return;
    }

    _isRevealStarted = true;
    if (MediaQuery.disableAnimationsOf(context)) {
      _completeRevealImmediately();
      return;
    }

    setState(() {});
    _controller.forward();
  }

  void _completeRevealImmediately() {
    _controller.value = 1;
    if (mounted) {
      setState(() {
        _isRevealComplete = true;
      });
      _notifyRevealComplete();
    } else {
      _isRevealComplete = true;
    }
  }

  void _notifyRevealComplete() {
    if (_notifiedRevealComplete) {
      return;
    }

    _notifiedRevealComplete = true;
    widget.onRevealComplete?.call();
  }

  @override
  void dispose() {
    removeHeroRevealListener(_heroRevealListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final children = <Widget>[widget.child];

    if (!_isRevealComplete) {
      final mediaQuery = MediaQuery.of(context);
      final viewportWidth = mediaQuery.size.width;
      final viewportHeight = mediaQuery.size.height;
      final mobileVersion = isMobileWidth(viewportWidth);
      final sectionGap = clampSize(viewportHeight * 0.07, 40, 72);
      final flagHeight = mobileVersion
          ? clampSize(viewportHeight * 0.16, 80, 130)
          : clampSize(viewportHeight * 0.16, 86, 150);
      final whitePeek = mobileVersion
          ? clampSize(viewportHeight * 0.015, 8, 14)
          : clampSize(viewportHeight * 0.035, 24, 36);
      final arrowHeight = clampSize(viewportWidth * 0.18, 64, 110);
      final heroHeight = clampSize(
        viewportHeight -
            sectionGap -
            flagHeight -
            whitePeek -
            (mobileVersion ? arrowHeight : 0),
        0,
        viewportHeight,
      );
      final startTop = -flagHeight;
      final mobileArrowOffset = mobileVersion ? arrowHeight : 0;
      final endTop =
          heroHeight + sectionGap + mobileArrowOffset + _stripeOverlap;
      final overlayHeight = viewportHeight + flagHeight + whitePeek;

      children.add(
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            final top = lerpDouble(startTop, endTop, _animation.value)!;

            return Positioned(
              top: top,
              left: 0,
              width: viewportWidth,
              height: overlayHeight,
              child: child!,
            );
          },
          child: IgnorePointer(
            child: _PortfolioRevealStripe(
              flagHeight: flagHeight,
              mobileVersion: mobileVersion,
              stripeOverlap: _stripeOverlap,
            ),
          ),
        ),
      );
    }

    return Stack(
      clipBehavior: Clip.none,
      children: children,
    );
  }
}

class _PortfolioRevealStripe extends StatelessWidget {
  const _PortfolioRevealStripe({
    required this.flagHeight,
    required this.mobileVersion,
    required this.stripeOverlap,
  });

  final double flagHeight;
  final bool mobileVersion;
  final double stripeOverlap;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.transparent,
      child: Column(
        children: [
          SizedBox(
            height: flagHeight,
            width: double.infinity,
            child: CustomPaint(
              painter: _PortfolioRevealStripePainter(
                mobileVersion: mobileVersion,
              ),
            ),
          ),
          Expanded(
            child: Transform.translate(
              offset: Offset(0, -stripeOverlap),
              child: const ColoredBox(
                color: Colors.white,
                child: SizedBox.expand(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PortfolioRevealStripePainter extends CustomPainter {
  const _PortfolioRevealStripePainter({
    required this.mobileVersion,
  });

  final bool mobileVersion;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final path = Path();

    if (mobileVersion) {
      path
        ..moveTo(0, size.height * 0.6)
        ..quadraticBezierTo(
          size.width * 0.24,
          size.height * 0.82,
          size.width * 0.49,
          size.height * 0.55,
        )
        ..quadraticBezierTo(
          size.width * 0.75,
          size.height * 0.25,
          size.width,
          size.height * 0.55,
        );
    } else {
      path
        ..moveTo(0, size.height * 0.2)
        ..quadraticBezierTo(
          size.width * 0.24,
          size.height * 0.82,
          size.width * 0.55,
          size.height * 0.1,
        )
        ..quadraticBezierTo(
          size.width * 0.75,
          size.height * -0.35,
          size.width,
          size.height * 0.4,
        );
    }

    path
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_PortfolioRevealStripePainter oldDelegate) {
    return oldDelegate.mobileVersion != mobileVersion;
  }
}
