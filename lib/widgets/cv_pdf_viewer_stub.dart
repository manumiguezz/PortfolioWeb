import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CvPdfViewer extends StatelessWidget {
  const CvPdfViewer({
    super.key,
    required this.assetPath,
    required this.zoom,
    required this.compact,
  });

  final String assetPath;
  final int zoom;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(
      assetPath,
      initialZoomLevel: zoom / 100,
      interactionMode:
          compact ? PdfInteractionMode.pan : PdfInteractionMode.selection,
      pageSpacing: compact ? 8 : 12,
      canShowPageLoadingIndicator: false,
      canShowScrollHead: false,
      canShowScrollStatus: false,
      maxZoomLevel: 4,
    );
  }
}
