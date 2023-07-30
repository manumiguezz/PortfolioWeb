import 'package:flutter/material.dart';

class SideVignette extends StatelessWidget {
  const SideVignette({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: Container(
            width: 35,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent] 
              )
            ),
          ),
        ),

        Positioned(
          right: 0,
          child: Container(
            alignment: Alignment.centerRight,
            width: 35,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [ Colors.transparent, Colors.black,] 
              )
            ),
          ),
        ),
      ],
    );
  }
}