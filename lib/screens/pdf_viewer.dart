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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Manuel Miguez Lauría'),
        backgroundColor: Colors.black,
        actions: const <Widget>[
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 340, vertical: 20),
        child: SfPdfViewer.asset(
          'assets/pdf/resume.pdf',
          controller: pdfViewerController,
          pageLayoutMode: PdfPageLayoutMode.continuous,
        ),
      )
    );
  }
}