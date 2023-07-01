import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Manuel Miguez Lauría',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'madetommybold'
          ),
        ),
      ),
    );
  }
}