import 'package:flutter/material.dart';

class Parallax extends StatefulWidget {
  const Parallax({super.key});

  @override
  State<Parallax> createState() => _ParallaxState();
}

class _ParallaxState extends State<Parallax> {
  
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;

  late String asset;
  late double top;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (v) {
        if(v is ScrollUpdateNotification){
          setState(() {
            rateSeven -= v.scrollDelta! / 1;
            rateSix -= v.scrollDelta! / 1.5;
            rateFive -= v.scrollDelta! / 2;
            rateFour -= v.scrollDelta! / 2.5;
            rateThree -= v.scrollDelta! / 3;
            rateTwo -= v.scrollDelta! / 3.5;
            rateOne -= v.scrollDelta! / 4;
          });
        }
        return false;
      },
      child: Stack(
        children: <Widget>[
          
          ParallaxWidget(top: rateSeven, asset: "7"),
          ParallaxWidget(top: rateSix, asset: "6"),
          ParallaxWidget(top: rateFive, asset: "5"),
          ParallaxWidget(top: rateFour, asset: "4"),
          ParallaxWidget(top: rateThree, asset: "3"),
          ParallaxWidget(top: rateTwo, asset: "2"),
          ParallaxWidget(top: rateOne, asset: "1"),
        
        ],
      ),
    );
  }
}

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    super.key,
    required this.top,
    required this.asset,
  });

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -45,
      top: top,
      child: SizedBox(
        height: 550,
        width: 1700,
        child: Image.asset("assets/parallax/$asset.png",
        fit: BoxFit.fill,
        ),
      )
    );
  }
}