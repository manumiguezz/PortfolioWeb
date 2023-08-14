import 'package:flutter/material.dart';

class Skillset extends StatelessWidget {
  const Skillset({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Skillset',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 70
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),

          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),

          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),
            Icon(Icons.abc, color: Colors.white, size: 200,),

          ],
        )
      ],
    );
  }
}