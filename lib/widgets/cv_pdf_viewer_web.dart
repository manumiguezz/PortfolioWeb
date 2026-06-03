// ignore_for_file: avoid_web_libraries_in_flutter, deprecated_member_use

import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';

int _cvPdfViewId = 0;

class CvPdfViewer extends StatefulWidget {
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
  State<CvPdfViewer> createState() => _CvPdfViewerState();
}

class _CvPdfViewerState extends State<CvPdfViewer> {
  late final String _viewType;
  html.DivElement? _container;

  @override
  void initState() {
    super.initState();
    _viewType = 'cv-pdf-viewer-${_cvPdfViewId++}';
    ui_web.platformViewRegistry.registerViewFactory(_viewType, (_) {
      final container = html.DivElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..style.backgroundColor = '#ffffff';

      _container = container;
      _renderPdf();
      return container;
    });
  }

  @override
  void didUpdateWidget(CvPdfViewer oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.assetPath != widget.assetPath) {
      _renderPdf(animateTransition: true);
      return;
    }

    if (oldWidget.zoom != widget.zoom || oldWidget.compact != widget.compact) {
      _renderPdf(animateTransition: false);
    }
  }

  void _renderPdf({bool animateTransition = false}) {
    final container = _container;

    if (container == null) {
      return;
    }

    final assetUrl = ui_web.assetManager.getAssetUrl(widget.assetPath);
    js.context.callMethod('portfolioRenderPdfPages', [
      container,
      assetUrl,
      widget.zoom,
      2,
      widget.compact,
      animateTransition,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(viewType: _viewType);
  }
}
