import 'package:flutter/material.dart';

class LastInfo extends StatelessWidget {
  const LastInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'manuelmiguezlauria@gmail.com',
          style: TextStyle(
            fontFamily: 'poppinslight',
                  fontSize: 12,
                  color: Colors.white
          ),
        ),

        SizedBox(width: 150,),

        Text(
          'Website built on Flutter',
          style: TextStyle(
            fontFamily: 'poppinslight',
                  fontSize: 12,
                  color: Colors.white
          ),
        )
      ],
    );
  }
}