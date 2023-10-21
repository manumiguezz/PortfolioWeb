import 'package:flutter/material.dart';

class LastInfo extends StatelessWidget {

  final double lastInfoFontSize;
  final double lastInfoSpaceBetween;

  const LastInfo({
    super.key, 
    required this.lastInfoFontSize, 
    required this.lastInfoSpaceBetween
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'manuelmiguezlauria@gmail.com',
          style: TextStyle(
            fontFamily: 'poppinslight',
                  fontSize: lastInfoFontSize,
                  color: Colors.white
          ),
        ),

        SizedBox(width: lastInfoSpaceBetween,),

        Text(
          'Website built on Flutter',
          style: TextStyle(
            fontFamily: 'poppinslight',
                  fontSize: lastInfoFontSize,
                  color: Colors.white
          ),
        )
      ],
    );
  }
}