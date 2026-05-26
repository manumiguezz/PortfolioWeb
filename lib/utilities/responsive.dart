const double kMobileBreakpoint = 600;
const double kWideDesktopBreakpoint = 1100;
const double kProjectCompositionMaxWidth = 1240;

double clampSize(double value, double min, double max) {
  return value.clamp(min, max).toDouble();
}

bool isMobileWidth(double width) => width < kMobileBreakpoint;

bool isNarrowDesktopWidth(double width) {
  return width >= kMobileBreakpoint && width < kWideDesktopBreakpoint;
}

double projectPreviewBleedOffset({
  required double viewportWidth,
  required double horizontalPadding,
  required double imageWidth,
  required double bleedScale,
  double compositionMaxWidth = kProjectCompositionMaxWidth,
  double maxOffset = 96,
}) {
  final availableWidth =
      (viewportWidth - (horizontalPadding * 2)).clamp(0, double.infinity);
  final compositionWidth =
      clampSize(availableWidth, 0, compositionMaxWidth);
  final compositionInset =
      horizontalPadding + ((availableWidth - compositionWidth) / 2);
  final scaledOverflow = imageWidth * (bleedScale - 1);
  final remainingEdgeGap = compositionInset - scaledOverflow;

  if (remainingEdgeGap <= 0) {
    return 0;
  }

  return clampSize(remainingEdgeGap, 0, maxOffset);
}
