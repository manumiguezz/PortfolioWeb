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

        const NoteshopApp(),

        Padding(
          padding: const EdgeInsets.only(left: 70),
          child: Row(
            children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    'Noteshop App',
                    style: TextStyle(
                      fontFamily: 'poppinsbold',
                      fontSize: 70,
                      color: Colors.white
                    ),
                  ),

                  SizedBox(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/techstackcolor/flutter.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/dart.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/jwt.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/http.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/restapi.png', scale: 20,),
                  ],
                ),
              ),
                ],
              )
            ]
          ),
        )


      ],
      
    );
  }
}

class NoteshopApp extends StatelessWidget {
  const NoteshopApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70 ),
      child: Row(
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Text(
                'Noteshop App',
                style: TextStyle(
                  fontFamily: 'poppinsbold',
                  fontSize: 70,
                  color: Colors.white
                ),
              ),

              SizedBox(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/icons/techstackcolor/flutter.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/dart.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/jwt.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/http.png', scale: 20,),
                    Image.asset('assets/icons/techstackcolor/restapi.png', scale: 20,),
                  ],
                ),
              ),
    
              const SizedBox(height: 20),
    
              const SizedBox(
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
    );
  }
}