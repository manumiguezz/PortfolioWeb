import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'My Stack',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 70
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Stack(
              alignment: Alignment.center,
              children: [
                Icon(Icons.adobe_rounded, color: Colors.white, size: 120,),
                Text('data', style: TextStyle(fontSize: 20, color: Colors.white)
                )
              ],
            ),

            Column(
              children: [
                Icon(Icons.adobe_rounded, color: Colors.white, size: 120,),
                Text('data', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),

            Column(
              children: [
                Icon(Icons.adobe_rounded, color: Colors.white, size: 120,),
                Text('data', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),

            Column(
              children: [
                Icon(Icons.adobe_rounded, color: Colors.white, size: 120,),
                Text('data', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),

            Column(
              children: [
                Icon(Icons.adobe_rounded, color: Colors.white, size: 120,),
                Text('data', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),
            
            Column(
              children: [
                Icon(Icons.adobe_rounded, color: Colors.white, size: 120,),
                Text('data', style: TextStyle(fontSize: 20, color: Colors.white),)
              ],
            ),
            

          ],
        ),

 
      ],
    );
  }
}