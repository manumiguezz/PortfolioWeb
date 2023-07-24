import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        
        Parallax(),

        ProjectItem(
          technologies: 'IOS & ANDROID', 
          title: 'NOTESHOP APP', 
          description: 'Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.', 
          textOnRight: true
        ),

      ],
    );
  }
}

