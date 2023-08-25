import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const Text(
          textAlign: TextAlign.center,
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 60
          ),
        ),

        const SizedBox(height: 50),

        Padding(
          padding: const EdgeInsets.only(left: 70 ),
          child: Row(
            children: [
              
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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

                  Row(
                    children: [
                      TechContainer(asset: 'flutter.png'),
                      TechContainer(asset: 'dart.png'),
                      TechContainer(asset: 'docker.png'),
                    ],
                  ),
        
                  SizedBox(height: 20),
        
                  SizedBox(
                    width: 510,
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
              ),

              const SizedBox(width: 300,),

              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset(
                  'assets/images/project/noteshop_white.png',
                  scale: 7,
                ),
              )
            ],
          ),
        )


      ],
      
    );
  }
}