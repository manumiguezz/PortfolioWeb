import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Presentation(),

        SizedBox(height: 240,),

        AboutMe(),

        SizedBox(height: 300,),

        Column(
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
        )

      ],
    );
  }
}