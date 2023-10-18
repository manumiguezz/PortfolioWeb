import 'package:flutter/material.dart';
import 'package:portfolio_web_version/resize/large_size.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    late double spaceOne;
    late double spaceTwo;
    late double spaceThree;
    late double spaceFour;

    if (MediaQuery.of(context).size.width < 1300){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;
      return LargeSize();
    }

    if (MediaQuery.of(context).size.width < 1300){
      spaceOne = 215;
      spaceTwo = 400;
      spaceThree = 190;
      spaceFour = 200;
    }

    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        const Presentation(),

        SizedBox(height: spaceOne,),

        AboutMe(),

        SizedBox(height: spaceTwo,),

        FittedBox(child: MyStack()),

        SizedBox(height: spaceThree),

        ProjectSection(),

        SizedBox(height: spaceFour,),

        LastInfo(),

      ],
    );
  }
}

