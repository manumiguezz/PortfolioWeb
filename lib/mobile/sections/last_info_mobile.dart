import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../widgets/url_launcher.dart';

class LastInfoMobile extends StatelessWidget {
  const LastInfoMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    final fontSize = clampSize(widthQuery * 0.026, 11, 14);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: clampSize(widthQuery * 0.05, 16, 28),
        runSpacing: 8,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => launchUrl('mailto:manuelmiguezlauria@gmail.com'),
              child: Text(
                'manuelmiguezlauria@gmail.com',
                style: TextStyle(
                  fontFamily: 'poppinslight',
                  fontSize: fontSize,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text(
            'Website built on Flutter',
            style: TextStyle(
              fontFamily: 'poppinslight',
              fontSize: fontSize,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
