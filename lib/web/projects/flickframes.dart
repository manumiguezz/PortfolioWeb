import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class FlickFrames extends StatelessWidget {
  const FlickFrames({super.key});

  @override
  Widget build(BuildContext context) {
    final widthQuery = MediaQuery.of(context).size.width;
    final heightQuery = MediaQuery.of(context).size.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        final isStacked = constraints.maxWidth < kWideDesktopBreakpoint;
        final horizontalPadding = isStacked
            ? clampSize(widthQuery * 0.08, 40, 72)
            : clampSize(widthQuery * 0.07, 70, 110);
        final detailsWidth = isStacked
            ? clampSize(widthQuery - (horizontalPadding * 2), 320, 760)
            : clampSize(widthQuery * 0.3, 360, 460);
        final imageWidth = isStacked
            ? clampSize(widthQuery - (horizontalPadding * 2), 420, 760)
            : clampSize(widthQuery * 0.5, 500, 760);
        final titleSize = isStacked
            ? clampSize(widthQuery * 0.05, 36, 54)
            : clampSize(widthQuery * 0.05, 48, 72);
        final subtitleSize = clampSize(widthQuery * 0.012, 12, 16);
        final bodySize = clampSize(widthQuery * 0.011, 14, 16);
        final gap = isStacked
            ? clampSize(widthQuery * 0.16, 132, 176)
            : clampSize(widthQuery * 0.045, 48, 72);
        final stackedImageTopInset = clampSize(widthQuery * 0.05, 36, 64);
        final widePreviewScaleBump = isStacked
            ? 0.0
            : projectPreviewScaleBridge(viewportWidth: widthQuery);
        final previewBleedScale =
            isStacked ? 1.38 : 1.24 + widePreviewScaleBump;
        final previewPaintOffset = isStacked
            ? Offset.zero
            : Offset(
                projectPreviewBleedOffset(
                  viewportWidth: widthQuery,
                  horizontalPadding: horizontalPadding,
                  imageWidth: imageWidth,
                  bleedScale: previewBleedScale,
                ),
                0,
              );

        final details = SizedBox(
          width: detailsWidth,
          child: _ProjectDetails(
            titleSize: titleSize,
            subtitleSize: subtitleSize,
            bodySize: bodySize,
            buttonHeight: clampSize(heightQuery * 0.065, 46, 60),
            buttonWidth: detailsWidth,
          ),
        );

        final image = ProjectPreview(
          asset: 'assets/images/project/flickframes.png',
          maxWidth: imageWidth,
          bleedScale: previewBleedScale,
          alignment: isStacked ? Alignment.center : Alignment.centerLeft,
          paintOffset: previewPaintOffset,
        );

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Center(
            child: ConstrainedBox(
              constraints:
                  const BoxConstraints(maxWidth: kProjectCompositionMaxWidth),
              child: isStacked
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: stackedImageTopInset),
                        image,
                        SizedBox(height: gap),
                        details,
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        details,
                        SizedBox(width: gap),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: image,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}

class _ProjectDetails extends StatelessWidget {
  const _ProjectDetails({
    required this.titleSize,
    required this.subtitleSize,
    required this.bodySize,
    required this.buttonHeight,
    required this.buttonWidth,
  });

  final double titleSize;
  final double subtitleSize;
  final double bodySize;
  final double buttonHeight;
  final double buttonWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProjectTitle(
          text: 'Flickframes',
          fontSize: titleSize,
        ),
        const SizedBox(height: 8),
        ProjectTechLabels(
          labels: const ['FLUTTER', 'DART', 'ISARDB', 'THEMOVIEDB'],
          fontSize: subtitleSize,
        ),
        const SizedBox(height: 22),
        Text(
          'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: bodySize,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 24),
        AnimatedButton(
          text: 'Github',
          textStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w300,
            fontSize: bodySize,
          ),
          onPress: () =>
              launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
          animatedOn: AnimatedOn.onHover,
          height: buttonHeight,
          width: buttonWidth,
          transitionType: TransitionType.CENTER_TB_IN,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedBackgroundColor: Colors.white,
          selectedTextColor: Colors.black,
          borderRadius: 0,
          borderWidth: 2,
        ),
      ],
    );
  }
}
