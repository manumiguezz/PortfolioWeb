import 'package:flutter/material.dart';

class MusicSection extends StatelessWidget {
  const MusicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Text(
          textAlign: TextAlign.center,
          'My music taste',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 60
          ),
        ),

      ],
    );
  }
}