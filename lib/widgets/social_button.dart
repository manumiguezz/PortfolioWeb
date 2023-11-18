import 'package:flutter/material.dart';
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
    double imageSize = widthQuery < 600 ? widthQuery * 0.11 : widthQuery * 0.05;

    return GestureDetector(
      onTap: () => launchUrl(widget.url),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: isHovered ? imageSize + widthQuery * 0.01 : imageSize, 
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
