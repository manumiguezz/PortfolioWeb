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
