import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  double topOne = 0;
  double topTwo = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if(v is ScrollUpdateNotification){
            setState(() {
              topOne = topOne - v.scrollDelta! / 3;
              topTwo = topTwo - v.scrollDelta! / 1;
            });
          }
          return false;
        },
        child: Stack(
          children: <Widget>[
            
            Positioned(
              left: -45,
              top: 0,
              child: Container(
                height: 550,
                width: 900,
                child: Image.asset("assets/parallax/7.png",
                fit: BoxFit.cover,
                ),
              )
            ),

            ListView(
              children: <Widget>[
                Container(
                  height: 600,
                  color: Colors.transparent,
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}