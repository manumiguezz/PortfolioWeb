import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Text(
          textAlign: TextAlign.center,
          'My Projects',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 60
          ),
        ),

        SizedBox(height: 50),

        Flickframes(),

        NoteshopApp(),

      ],
      
    );
  }
}

class Flickframes extends StatelessWidget {
  const Flickframes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
          
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                Text(
                  'Flickframes',
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: 70,
                    color: Colors.white
                  ),
                ),
          
                SizedBox(
                  width: 330,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('ISARDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('THEMOVIEDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
          
                SizedBox(height: 20),
          
                SizedBox(
                  width: 510,
                  child: Text(
                    'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
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
          
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 5),
              child: Transform(
                transform: Matrix4.translationValues(-50, 0, 0), // Translate image by -50 pixels on X-axis
                child: Image.asset('assets/images/project/flickframes_white.png', scale: 4.8,), 
              ),
            )
          ]
        ),
      ),
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
                'Noteshop',
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