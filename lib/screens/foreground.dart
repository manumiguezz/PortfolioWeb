import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';


class Foreground extends StatelessWidget {
  const Foreground({super.key});

  @override
  Widget build(BuildContext context) {

    if (MediaQuery.of(context).size.width < 600){
      return const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Presentation(),

          SizedBox(height: 215,),

          AboutMe(),

          SizedBox(height: 400,),

          FittedBox(child: MyStack()),

          SizedBox(height: 190),

          ProjectSection(),

          SizedBox(height: 200,),

          LastInfo(),

        ],
      );
    }
  }
}

