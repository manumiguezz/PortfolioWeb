import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';

class SocialButton extends StatefulWidget {
  final String imageUrl;
  final String url;

  const SocialButton({
    super.key,
    required this.imageUrl,
    required this.url,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    final microMobile = isMicroMobileWidth(widthQuery);
    final imageSize = microMobile
        ? clampSize(widthQuery * 0.1, 26, 32)
        : isMobileWidth(widthQuery)
            ? clampSize(widthQuery * 0.1, 36, 56)
            : clampSize(widthQuery * 0.045, 38, 64);
    final hoverDelta = microMobile
        ? clampSize(widthQuery * 0.004, 2, 4)
        : clampSize(widthQuery * 0.006, 4, 10);

    return GestureDetector(
      onTap: () => launchUrl(widget.url),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: isHovered ? imageSize + hoverDelta : imageSize,
          child: Image.asset(
            widget.imageUrl,
            color: Colors.white,
            width: imageSize,
          ),
        ),
      ),
    );
  }
}
