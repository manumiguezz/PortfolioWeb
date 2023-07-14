import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (v) {
          if(v is ScrollUpdateNotification){
          }
          return false;
        },
        child: Stack(
          children: <Widget>[
            
            Positioned(
              top: 100,
              left: 0,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              )
            ),

            Positioned(
              top: 100,
              left: 150,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              )
            ),

          ],
        ),
      ),
    );
  }
}