// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;  
// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

// class PdfViewer extends StatefulWidget {

//   @override
//   State<PdfViewer> createState() => _PdfViewerState();
// }

// class _PdfViewerState extends State<PdfViewer> {
//   firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;

//   Future<void> listExample() async {  
//     firebase_storage.ListResult result =  
//     await firebase_storage.FirebaseStorage.instance.ref().child('notes').listAll();  

//     result.items.forEach((firebase_storage.Reference ref) {  
//       print('Found file: $ref');  
//     });  

//     result.prefixes.forEach((firebase_storage.Reference ref) {  
//       print('Found directory: $ref');  
//     });  
//   }

//   Future<void> downloadURLExample() async {  
//     String downloadURL = await firebase_storage.FirebaseStorage.instance  
//     .ref('application/pdf.pdf')  
//         .getDownloadURL();  
//     print(downloadURL);  
//     PDFDocument doc = await PDFDocument.fromURL(downloadURL);  
//     Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPDF(doc)));  //Notice the Push Route once this is done.
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }