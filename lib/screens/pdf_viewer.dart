
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';



class PdfViewer extends StatefulWidget {
  @override
  _PdfViewer createState() => _PdfViewer();
}

class _PdfViewer extends State<PdfViewer> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  late PdfViewerController pdfViewerController;

  Uint8List? _documentBytes;
  String path = 'https://firebasestorage.googleapis.com/v0/b/flutterfirebase-6c279.appspot.com/o/GIS.pdf?alt=media&token=51654170-c140-4ffa-ae1a-9fb431d0dee2';

  @override
  void initState() {
    getPdfBytes();
    pdfViewerController = PdfViewerController();
    super.initState();
  }

  void getPdfBytes() async {
    if (kIsWeb) {
      firebase_storage.Reference pdfRef = firebase_storage.FirebaseStorage.instanceFor(
        bucket: 'flutter-web-app-edc4a.appspot.com'
      ).refFromURL(path);
      //size mentioned here is max size to download from firebase.
      await pdfRef.getData(104857600).then((value) {
        _documentBytes = value;
        setState(() {});
      });
    } else {
      HttpClient client = HttpClient();
      final Uri url = Uri.base.resolve(path);
      final HttpClientRequest request = await client.getUrl(url);
      final HttpClientResponse response = await request.close();
      _documentBytes = await consolidateHttpClientResponseBytes(response);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {

    Widget child = const Center(child: CircularProgressIndicator());

    pdfViewerController.zoomLevel = 2;

    if (_documentBytes != null) {
      child = SfPdfViewer.memory(_documentBytes!);
    }
    return Scaffold(
      appBar: AppBar(title: Text('test'),),
      body: child,
    );



    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   appBar: AppBar(
    //     centerTitle: true,
    //     title: const Text('Manuel Miguez Lauría'),
    //     backgroundColor: Colors.black,
    //     actions: const <Widget>[
    //     ],
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 340, vertical: 20),
    //     child: 
    //       // SfPdfViewer.asset(
    //       // 'assets/pdf/resume.pdf',
    //       // controller: pdfViewerController,
    //       // pageLayoutMode: PdfPageLayoutMode.continuous,
    //       // ),

    //       SfPdfViewer.network(
    //         'https://github.com/manumiguezz/PortfolioWeb/blob/cc07c417820f5eb62d78e61f96eeca59e03fe202/assets/pdf/resume.pdf',
    //         key: _pdfViewerKey,
    //       )
          


    //   )
    // );
  }
}