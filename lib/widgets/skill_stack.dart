import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                Container(
                  child: Image.asset(
                    'assets/icons/techstack/json.png',
                    scale: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                Container(
                  width: 75,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Colors.black, width: 4)
                  ),
                  child: const Text(
                    'data', 
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.black)),
                )
              ],
            ),
            

          ],
        ),

 
      ],
    );
  }
}