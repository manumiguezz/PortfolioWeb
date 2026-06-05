import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_web_version/data/stack_technologies.dart';

const _inactiveIconMatrix = <double>[
  0.1169,
  0.3934,
  0.0397,
  0,
  90,
  0.1169,
  0.3934,
  0.0397,
  0,
  90,
  0.1169,
  0.3934,
  0.0397,
  0,
  90,
  0,
  0,
  0,
  1,
  0,
];

class TechStack extends StatefulWidget {
  final StackTechnology technology;
  final double nameSize;
  final double stackSize;
  final Duration tapHighlightDuration;

  const TechStack({
    required this.technology,
    required this.stackSize,
    required this.nameSize,
    this.tapHighlightDuration = const Duration(milliseconds: 800),
    super.key,
  });

  @override
  State<TechStack> createState() => _TechStackState();
}

class _TechStackState extends State<TechStack> {
  bool _isHovered = false;
  bool _isTapHighlighted = false;
  Timer? _tapResetTimer;

  bool get _isActive => _isHovered || _isTapHighlighted;

  @override
  void dispose() {
    _tapResetTimer?.cancel();
    super.dispose();
  }

  void _setHoverState(bool isHovered) {
    if (_isHovered == isHovered) return;

    setState(() {
      _isHovered = isHovered;
    });
  }

  void _showTapHighlight() {
    _tapResetTimer?.cancel();

    setState(() {
      _isTapHighlighted = true;
    });

    _tapResetTimer = Timer(widget.tapHighlightDuration, () {
      if (!mounted) return;

      setState(() {
        _isTapHighlighted = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.technology.semanticLabel,
      image: true,
      button: true,
      onTap: _showTapHighlight,
      onTapHint: 'Show colored icon',
      child: MouseRegion(
        onEnter: (_) => _setHoverState(true),
        onExit: (_) => _setHoverState(false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _showTapHighlight,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _StackIcon(
                iconAsset: widget.technology.iconAsset,
                isActive: _isActive,
                size: widget.stackSize,
              ),
              const SizedBox(height: 10),
              Text(
                widget.technology.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: widget.nameSize,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TechStackGroup extends StatelessWidget {
  const TechStackGroup({
    required this.group,
    required this.stackSize,
    required this.nameSize,
    required this.itemWidth,
    required this.itemGap,
    required this.rowGap,
    required this.groupTitleSize,
    this.groupTitleGap = 24,
    super.key,
  });

  final StackTechnologyGroup group;
  final double stackSize;
  final double nameSize;
  final double itemWidth;
  final double itemGap;
  final double rowGap;
  final double groupTitleSize;
  final double groupTitleGap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          group.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromARGB(255, 190, 190, 190),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: groupTitleSize,
          ),
        ),
        SizedBox(height: groupTitleGap),
        Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          spacing: itemGap,
          runSpacing: rowGap,
          children: [
            for (final technology in group.technologies)
              SizedBox(
                width: itemWidth,
                child: TechStack(
                  technology: technology,
                  stackSize: stackSize,
                  nameSize: nameSize,
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _StackIcon extends StatelessWidget {
  const _StackIcon({
    required this.iconAsset,
    required this.isActive,
    required this.size,
  });

  final String iconAsset;
  final bool isActive;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: SizedBox.square(
        dimension: size,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ColorFiltered(
              colorFilter: const ColorFilter.matrix(_inactiveIconMatrix),
              child: _StackIconImage(iconAsset: iconAsset),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 260),
              curve: Curves.easeOutCubic,
              opacity: isActive ? 1 : 0,
              child: _StackIconImage(iconAsset: iconAsset),
            ),
          ],
        ),
      ),
    );
  }
}

class _StackIconImage extends StatelessWidget {
  const _StackIconImage({
    required this.iconAsset,
  });

  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconAsset,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
    );
  }
}
