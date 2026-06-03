import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/exports/utils.dart';
import 'package:portfolio_web_version/utilities/cv_asset.dart';
import 'package:portfolio_web_version/utilities/cv_download_stub.dart'
    if (dart.library.html) 'package:portfolio_web_version/utilities/cv_download_web.dart';
import 'package:portfolio_web_version/widgets/cv_pdf_viewer_stub.dart'
    if (dart.library.html) 'package:portfolio_web_version/widgets/cv_pdf_viewer_web.dart';

Future<void> showCvViewerDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    barrierColor: Colors.black.withValues(alpha: 0.36),
    builder: (context) => const CvViewerDialog(),
  );
}

class CvViewerDialog extends StatelessWidget {
  const CvViewerDialog({super.key});

  void _close(BuildContext context) {
    Navigator.of(context).maybePop();
  }

  Future<void> _download(BuildContext context, CvDocument document) async {
    try {
      await downloadCv(document);
    } catch (_) {
      if (!context.mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('CV download is only available in the web build.'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      autofocus: true,
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            event.logicalKey == LogicalKeyboardKey.escape) {
          _close(context);
          return KeyEventResult.handled;
        }

        return KeyEventResult.ignored;
      },
      child: Semantics(
        scopesRoute: true,
        namesRoute: true,
        explicitChildNodes: true,
        label: 'Curriculum Vitae PDF viewer',
        child: Material(
          type: MaterialType.transparency,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => _close(context),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final width = constraints.maxWidth;
                  final height = constraints.maxHeight;
                  final compact = isMobileWidth(width) || width < 700;
                  final outerPadding =
                      compact ? 12.0 : clampSize(width * 0.035, 28, 48);
                  final availableWidth =
                      math.max(0.0, width - (outerPadding * 2));
                  final availableHeight =
                      math.max(0.0, height - (outerPadding * 2));
                  final preferredWidth = compact
                      ? availableWidth
                      : clampSize(width * 0.74, 760, 1040);
                  final dialogWidth = math.min(availableWidth, preferredWidth);
                  final preferredHeight =
                      compact ? availableHeight : height * 0.88;
                  final dialogHeight =
                      math.min(availableHeight, preferredHeight);

                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(outerPadding),
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: SizedBox(
                          width: dialogWidth,
                          height: dialogHeight,
                          child: _DialogSurface(
                            compact: compact,
                            onClose: () => _close(context),
                            onDownload: (document) =>
                                _download(context, document),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DialogSurface extends StatefulWidget {
  const _DialogSurface({
    required this.compact,
    required this.onClose,
    required this.onDownload,
  });

  final bool compact;
  final VoidCallback onClose;
  final Future<void> Function(CvDocument document) onDownload;

  @override
  State<_DialogSurface> createState() => _DialogSurfaceState();
}

class _DialogSurfaceState extends State<_DialogSurface> {
  static const int _minZoom = 75;
  static const int _maxZoom = 150;
  static const int _zoomStep = 10;

  int _zoom = 100;
  CvDocument _document = kDefaultCvDocument;

  void _zoomIn() {
    setState(() {
      _zoom = math.min(_maxZoom, _zoom + _zoomStep);
    });
  }

  void _zoomOut() {
    setState(() {
      _zoom = math.max(_minZoom, _zoom - _zoomStep);
    });
  }

  void _toggleLanguage() {
    setState(() {
      _document = _document.language == CvLanguage.english
          ? kSpanishCvDocument
          : kEnglishCvDocument;
    });
  }

  void _downloadSelectedDocument() {
    widget.onDownload(_document);
  }

  @override
  Widget build(BuildContext context) {
    const borderColor = Color(0xFF171717);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: borderColor, width: widget.compact ? 1.5 : 2),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 32,
            offset: Offset(0, 18),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Column(
          children: [
            _DialogHeader(
              compact: widget.compact,
              zoom: _zoom,
              canZoomIn: _zoom < _maxZoom,
              canZoomOut: _zoom > _minZoom,
              document: _document,
              onClose: widget.onClose,
              onDownload: _downloadSelectedDocument,
              onToggleLanguage: _toggleLanguage,
              onZoomIn: _zoomIn,
              onZoomOut: _zoomOut,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFE6E6E6),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(widget.compact ? 8 : 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: CvPdfViewer(
                    assetPath: _document.assetPath,
                    compact: widget.compact,
                    zoom: _zoom,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DialogHeader extends StatelessWidget {
  const _DialogHeader({
    required this.compact,
    required this.zoom,
    required this.canZoomIn,
    required this.canZoomOut,
    required this.document,
    required this.onClose,
    required this.onDownload,
    required this.onToggleLanguage,
    required this.onZoomIn,
    required this.onZoomOut,
  });

  final bool compact;
  final int zoom;
  final bool canZoomIn;
  final bool canZoomOut;
  final CvDocument document;
  final VoidCallback onClose;
  final VoidCallback onDownload;
  final VoidCallback onToggleLanguage;
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;

  @override
  Widget build(BuildContext context) {
    final headerPadding = EdgeInsets.fromLTRB(
      compact ? 16 : 24,
      compact ? 14 : 18,
      compact ? 10 : 16,
      compact ? 12 : 18,
    );
    final title = Text(
      'Curriculum Vitae',
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: compact ? 20 : 24,
      ),
    );

    if (compact) {
      return Padding(
        padding: headerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(child: title),
                _CloseButton(onClose: onClose),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _LanguageToggle(
                  compact: compact,
                  document: document,
                  onToggle: onToggleLanguage,
                ),
                const SizedBox(width: 10),
                _ZoomControls(
                  compact: compact,
                  zoom: zoom,
                  canZoomIn: canZoomIn,
                  canZoomOut: canZoomOut,
                  onZoomIn: onZoomIn,
                  onZoomOut: onZoomOut,
                ),
              ],
            ),
            const SizedBox(height: 10),
            _DownloadButton(
              width: double.infinity,
              height: 42,
              onDownload: onDownload,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: headerPadding,
      child: Row(
        children: [
          Expanded(child: title),
          _ZoomControls(
            compact: compact,
            zoom: zoom,
            canZoomIn: canZoomIn,
            canZoomOut: canZoomOut,
            onZoomIn: onZoomIn,
            onZoomOut: onZoomOut,
          ),
          const SizedBox(width: 12),
          _LanguageToggle(
            compact: compact,
            document: document,
            onToggle: onToggleLanguage,
          ),
          const SizedBox(width: 12),
          _DownloadButton(
            width: 154,
            height: 44,
            onDownload: onDownload,
          ),
          const SizedBox(width: 12),
          _CloseButton(onClose: onClose),
        ],
      ),
    );
  }
}

class _LanguageToggle extends StatelessWidget {
  const _LanguageToggle({
    required this.compact,
    required this.document,
    required this.onToggle,
  });

  final bool compact;
  final CvDocument document;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final width = compact ? 78.0 : 112.0;
    final height = compact ? 42.0 : 44.0;
    final selectedEnglish = document.language == CvLanguage.english;
    final segmentWidth = (width - 4) / 2;

    return Semantics(
      button: true,
      label: 'Switch CV language. Current language: ${document.label}',
      child: Tooltip(
        message: 'Switch CV language',
        child: OutlinedButton(
          onPressed: onToggle,
          style: ButtonStyle(
            fixedSize: WidgetStateProperty.all(Size(width, height)),
            minimumSize: WidgetStateProperty.all(Size(width, height)),
            padding: WidgetStateProperty.all(EdgeInsets.zero),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: WidgetStateProperty.all(Colors.white),
            overlayColor: WidgetStateProperty.all(const Color(0xFFEFEFEF)),
            side: WidgetStateProperty.all(
              const BorderSide(color: Colors.black, width: 2),
            ),
            shape: WidgetStateProperty.all(
              const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            ),
          ),
          child: SizedBox(
            width: width,
            height: height,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Padding(
                  padding: const EdgeInsets.all(2),
                  child: AnimatedAlign(
                    alignment: selectedEnglish
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    duration: const Duration(milliseconds: 420),
                    curve: Curves.easeInOutCubic,
                    child: Container(
                      width: segmentWidth,
                      height: height - 4,
                      color: Colors.black,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: _LanguageToggleLabel(
                        label: kEnglishCvDocument.shortLabel,
                        selected: selectedEnglish,
                        compact: compact,
                      ),
                    ),
                    Expanded(
                      child: _LanguageToggleLabel(
                        label: kSpanishCvDocument.shortLabel,
                        selected: !selectedEnglish,
                        compact: compact,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LanguageToggleLabel extends StatelessWidget {
  const _LanguageToggleLabel({
    required this.label,
    required this.selected,
    required this.compact,
  });

  final String label;
  final bool selected;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeInOutCubic,
      style: TextStyle(
        color: selected ? Colors.white : Colors.black,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: compact ? 11 : 13,
        letterSpacing: 0,
      ),
      child: Text(
        label,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _ZoomControls extends StatelessWidget {
  const _ZoomControls({
    required this.compact,
    required this.zoom,
    required this.canZoomIn,
    required this.canZoomOut,
    required this.onZoomIn,
    required this.onZoomOut,
  });

  final bool compact;
  final int zoom;
  final bool canZoomIn;
  final bool canZoomOut;
  final VoidCallback onZoomIn;
  final VoidCallback onZoomOut;

  @override
  Widget build(BuildContext context) {
    final height = compact ? 42.0 : 44.0;
    final controlWidth = compact ? 108.0 : 130.0;

    return Container(
      width: controlWidth,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Row(
        children: [
          _ZoomButton(
            tooltip: 'Zoom out',
            icon: Icons.remove,
            enabled: canZoomOut,
            onPressed: onZoomOut,
          ),
          Expanded(
            child: Text(
              '$zoom%',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
          _ZoomButton(
            tooltip: 'Zoom in',
            icon: Icons.add,
            enabled: canZoomIn,
            onPressed: onZoomIn,
          ),
        ],
      ),
    );
  }
}

class _ZoomButton extends StatelessWidget {
  const _ZoomButton({
    required this.tooltip,
    required this.icon,
    required this.enabled,
    required this.onPressed,
  });

  final String tooltip;
  final IconData icon;
  final bool enabled;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: enabled ? onPressed : null,
      tooltip: tooltip,
      icon: Icon(
        icon,
        color: enabled ? Colors.black : const Color(0xFFB8B8B8),
        size: 18,
      ),
      hoverColor: const Color(0xFFEFEFEF),
      focusColor: const Color(0xFFEFEFEF),
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minHeight: 38,
        minWidth: 34,
      ),
    );
  }
}

class _DownloadButton extends StatelessWidget {
  const _DownloadButton({
    required this.width,
    required this.height,
    required this.onDownload,
  });

  final double width;
  final double height;
  final VoidCallback onDownload;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Download CV PDF',
      child: AnimatedButton(
        text: 'Download',
        textStyle: const TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        onPress: onDownload,
        animatedOn: AnimatedOn.onHover,
        height: height,
        width: width,
        transitionType: TransitionType.BOTTOM_CENTER_ROUNDER,
        backgroundColor: Colors.white,
        borderColor: Colors.black,
        selectedBackgroundColor: Colors.black,
        selectedTextColor: Colors.white,
        borderRadius: 0,
        borderWidth: 2,
      ),
    );
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({required this.onClose});

  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Close CV viewer',
      child: IconButton(
        onPressed: onClose,
        tooltip: 'Close',
        icon: const Icon(Icons.close, color: Colors.black),
        hoverColor: const Color(0xFFEFEFEF),
        focusColor: const Color(0xFFEFEFEF),
      ),
    );
  }
}
