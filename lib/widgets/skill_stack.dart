import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

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

            TechContainer(asset: 'json.png', techName: 'JSON'),
            TechContainer(asset: 'json.png', techName: 'JSON'),
            TechContainer(asset: 'json.png', techName: 'JSON'),
            TechContainer(asset: 'json.png', techName: 'JSON'),
            TechContainer(asset: 'json.png', techName: 'JSON'),
            TechContainer(asset: 'json.png', techName: 'JSON'),

          ],
        ),

 
      ],
    );
  }
}

