import 'package:flutter/material.dart';
import 'package:personal_web/widgets/parallax.dart';

class PageListView extends StatelessWidget {
  const PageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        SingleChildScrollView(
          child: Column(
            children: [
              
              Container(
                color: Colors.white,
                height: 550,
              ),

              Container(
                color: Colors.black,
                height: 900,
              ),
            ],
          )
        ),
        
        const Parallax(),
      ],
    );
  }
}