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
    final microMobile = isMicroMobileWidth(widthQuery);
    final fontSize = microMobile
        ? clampSize(widthQuery * 0.032, 8, 10)
        : clampSize(widthQuery * 0.026, 11, 14);
    final horizontalPadding = microMobile ? 16.0 : 24.0;
    final verticalPadding = microMobile ? 20.0 : 24.0;
    final email = MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => launchUrl('mailto:manuelmiguezlauria@gmail.com'),
        child: Text(
          'manuelmiguezlauria@gmail.com',
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: fontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
    final credit = Text(
      'Website built on Flutter',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        fontSize: fontSize,
        color: Colors.white,
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: microMobile
          ? Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: email,
                  ),
                ),
                const SizedBox(height: 8),
                credit,
              ],
            )
          : Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: clampSize(widthQuery * 0.05, 16, 28),
              runSpacing: 8,
              children: [
                email,
                credit,
              ],
            ),
    );
  }
}
