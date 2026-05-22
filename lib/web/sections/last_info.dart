import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../widgets/url_launcher.dart';

class LastInfo extends StatelessWidget {
  const LastInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    final fontSize = clampSize(widthQuery * 0.010, 12, 15);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Wrap(
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: clampSize(widthQuery * 0.08, 32, 96),
        runSpacing: 10,
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
