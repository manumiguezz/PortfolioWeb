import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatefulWidget {
  @override
  _PdfViewer createState() => _PdfViewer();
}

class _PdfViewer extends State<PdfViewer> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  late PdfViewerController pdfViewerController;

  @override
  void initState() {
    pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    pdfViewerController.zoomLevel = 2;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 170),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Manuel Miguez Lauría Resume'),
          actions: <Widget>[
            IconButton(
            icon: Icon(
              Icons.zoom_in,
              color: Colors.white,
            ),
            onPressed: () {
              pdfViewerController.zoomLevel = 2;
            },
          ),
          ],
        ),
        body: SfPdfViewer.asset(
          'assets/pdf/resume.pdf',
          controller: pdfViewerController,
          initialZoomLevel: 0.4,
        )
      ),
    );
  }
}