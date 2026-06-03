// ignore_for_file: avoid_web_libraries_in_flutter, deprecated_member_use

import 'dart:html' as html;

import 'package:flutter/services.dart';
import 'package:portfolio_web_version/utilities/cv_asset.dart';

Future<void> downloadCv(CvDocument document) async {
  final pdfBytes = await rootBundle.load(document.assetPath);
  final pdfData = pdfBytes.buffer.asUint8List(
    pdfBytes.offsetInBytes,
    pdfBytes.lengthInBytes,
  );
  final blob = html.Blob([pdfData], 'application/pdf');
  final objectUrl = html.Url.createObjectUrlFromBlob(blob);
  final anchor = html.AnchorElement(href: objectUrl)
    ..download = document.downloadFileName
    ..style.display = 'none';

  html.document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  html.Url.revokeObjectUrl(objectUrl);
}
