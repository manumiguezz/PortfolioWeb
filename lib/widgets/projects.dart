import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Text(
          textAlign: TextAlign.center,
          'My Stack',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 60
          ),
        ),

        SizedBox(height: 50),

        Padding(
          padding: EdgeInsets.only(left: 70 ),
          child: Row(
            children: [
              Column(
                children: [
                  
                  Text(
                    'Noteshop App',
                    style: TextStyle(
                      fontFamily: 'poppinsbold',
                      fontSize: 70,
                      color: Colors.white
                    ),
                  ),
        
                  SizedBox(height: 20),
        
                  SizedBox(
                    width: 350,
                    child: Text(
                      'Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppinslight',
                          fontSize: 20,
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        )


      ],
      
    );
  }
}