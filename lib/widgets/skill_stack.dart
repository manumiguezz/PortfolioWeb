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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(
                      'assets/icons/techstack/json.png',
                      scale: 6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 115),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(color: Colors.black, width: 4)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                      child: const Text(
                        'JSON', 
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20, 
                          color: Colors.black,
                          fontFamily: 'poppinsbold',                        
                        )),
                    ),
                  ),
                )
              ],
            ),
            

          ],
        ),

 
      ],
    );
  }
}