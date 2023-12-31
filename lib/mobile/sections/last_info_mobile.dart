import 'package:flutter/material.dart';

class LastInfoMobile extends StatelessWidget {

  const LastInfoMobile({
    super.key,});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'manuelmiguezlauria@gmail.com',
          style: TextStyle(
            fontFamily: 'poppinslight',
                  fontSize: widthQuery * 0.025,
                  color: Colors.white
          ),
        ),

        SizedBox(width: widthQuery * 0.05,),

        Text(
          'Website built on Flutter',
          style: TextStyle(
            fontFamily: 'poppinslight',
                  fontSize: widthQuery * 0.025,
                  color: Colors.white
          ),
        )
      ],
    );
  }
}