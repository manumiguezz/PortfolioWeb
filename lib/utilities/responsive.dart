const double kMobileBreakpoint = 600;
const double kWideDesktopBreakpoint = 1100;
const double kProjectCompositionMaxWidth = 1240;
const double _kProjectPreviewFullBleedMaxWidth = 1900;
const double _kProjectPreviewCompactBleedWidth = 2300;
const double _kProjectPreviewScaleBridgePeakStartWidth = 2060;
const double _kProjectPreviewScaleBridgePeakEndWidth = 2176;
const double _kProjectPreviewDesktopOverscanMin = 64;
const double _kProjectPreviewDesktopOverscanMax = 132;

double clampSize(double value, double min, double max) {
  return value.clamp(min, max).toDouble();
}

bool isMobileWidth(double width) => width < kMobileBreakpoint;

bool isNarrowDesktopWidth(double width) {
  return width >= kMobileBreakpoint && width < kWideDesktopBreakpoint;
}

double projectPreviewScaleBridge({
  required double viewportWidth,
  double maxBump = 0.1,
}) {
  if (viewportWidth <= _kProjectPreviewFullBleedMaxWidth ||
      viewportWidth >= _kProjectPreviewCompactBleedWidth) {
    return 0;
  }

  if (viewportWidth >= _kProjectPreviewScaleBridgePeakStartWidth &&
      viewportWidth <= _kProjectPreviewScaleBridgePeakEndWidth) {
    return maxBump;
  }

  if (viewportWidth < _kProjectPreviewScaleBridgePeakStartWidth) {
    final progress = (viewportWidth - _kProjectPreviewFullBleedMaxWidth) /
        (_kProjectPreviewScaleBridgePeakStartWidth -
            _kProjectPreviewFullBleedMaxWidth);
    return maxBump * _smoothStep(progress);
  }

  final progress = (viewportWidth - _kProjectPreviewScaleBridgePeakEndWidth) /
      (_kProjectPreviewCompactBleedWidth -
          _kProjectPreviewScaleBridgePeakEndWidth);
  return maxBump * (1 - _smoothStep(progress));
}

double projectPreviewBleedOffset({
  required double viewportWidth,
  required double horizontalPadding,
  required double imageWidth,
  required double bleedScale,
  double compositionMaxWidth = kProjectCompositionMaxWidth,
  double compactMaxOffset = 96,
}) {
  final availableWidth = (viewportWidth - (horizontalPadding * 2))
      .clamp(0, double.infinity)
      .toDouble();
  final compositionWidth = clampSize(availableWidth, 0, compositionMaxWidth);
  final compositionInset =
      horizontalPadding + ((availableWidth - compositionWidth) / 2);
  final scaledOverflow = imageWidth * (bleedScale - 1);
  final remainingEdgeGap = compositionInset - scaledOverflow;

  if (remainingEdgeGap <= 0) {
    return 0;
  }

  final desktopOverscan = clampSize(
    viewportWidth * 0.055,
    _kProjectPreviewDesktopOverscanMin,
    _kProjectPreviewDesktopOverscanMax,
  );
  final fullBleedOffset = remainingEdgeGap + desktopOverscan;

  if (viewportWidth <= _kProjectPreviewFullBleedMaxWidth) {
    return fullBleedOffset;
  }

  final compactOffset = clampSize(remainingEdgeGap, 0, compactMaxOffset);

  if (viewportWidth >= _kProjectPreviewCompactBleedWidth) {
    return compactOffset;
  }

  final compactProgress = (viewportWidth - _kProjectPreviewFullBleedMaxWidth) /
      (_kProjectPreviewCompactBleedWidth - _kProjectPreviewFullBleedMaxWidth);

  return fullBleedOffset +
      ((compactOffset - fullBleedOffset) * compactProgress);
}

double _smoothStep(double value) {
  final progress = value.clamp(0, 1).toDouble();
  return progress * progress * (3 - (2 * progress));
}
