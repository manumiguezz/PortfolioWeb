import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:personal_web/widgets/widgets.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.asset(
            'assets/images/profile.png',
            scale: 6.5,
    
          ),
    
          const SizedBox(width: 50,),
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              const Text(
                'About me',
                style: TextStyle(
                  fontFamily: 'poppinsbold',
                  fontSize: 70,
                  color: Colors.black
                ),
              ),
          
              const SizedBox(height: 10,),
          
              SizedBox(
                height: 420,
                width: 550,
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'poppinslight',
                      fontSize: 15
                    ),
                    children: [
                      TextSpan(text: 'As an aspiring '),
                      TextSpan(
                        text: 'backend software developer',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', I have a strong foundation in '),
                      TextSpan(
                        text: 'Java',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' development, with expertise in Java 11 and 17. I\'m proficient in '),
                      TextSpan(
                        text: 'object-oriented programming',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' and can work effectively with other languages like '),
                      TextSpan(
                        text: 'Dart',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', '),
                      TextSpan(
                        text: 'C',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', '),
                      TextSpan(
                        text: 'C++',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', as well as web technologies such as '),
                      TextSpan(
                        text: 'HTML',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'CSS',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: '.\n\nI also have extensive knowledge of frameworks like '),
                      TextSpan(
                        text: 'Spring Boot',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', '),
                      TextSpan(
                        text: 'Flutter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', '),
                      TextSpan(
                        text: 'Hibernate',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', and '),
                      TextSpan(
                        text: 'JavaFX',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', enabling me to work on diverse projects. I\'ve developed '),
                      TextSpan(
                        text: 'RESTful APIs',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' with '),
                      TextSpan(
                        text: 'CRUD',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' operations and established database connections. Additionally, I\'m skilled in using dependency managers like '),
                      TextSpan(
                        text: 'Maven',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Gradle',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' for efficient project management and organization.\n\nBeyond my technical expertise, I possess effective and friendly '),
                      TextSpan(
                        text: 'communication',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' skills, enabling seamless integration within teams. I easily adapt to new languages and tools, allowing me to contribute to a variety of projects. And employing '),
                      TextSpan(
                        text: 'critical thinking',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ', I approach '),
                      TextSpan(
                        text: 'problem-solving',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: ' methodically, while my confidence empowers me to confront challenges with determination.'),
                    ],
                  ),
                )
                
                
                // Text(
                //   textAlign: TextAlign.justify,
                //   softWrap: true,
                //   overflow: TextOverflow.clip,
                //   "As an aspiring backend software developer, I have a strong foundation in Java development, with expertise in Java 11 and 17. I'm proficient in object-oriented programming and can work effectively with other languages like Dart, C, C++, as well as web technologies such as HTML and CSS. \n\nI also have extensive knowledge of frameworks like Spring Boot, Flutter, Hibernate, and JavaFX, enabling me to work on diverse projects. I've developed RESTful APIs with CRUD operations and established database connections. Additionally, I'm skilled in using dependency managers like Maven and Gradle for efficient project management and organization.\n\nBeyond my technical expertise, I possess effective and friendly communication skills, enabling seamless integration within teams. I easily adapt to new languages and tools, allowing me to contribute to a variety of projects. And employing critical thinking, I approach problem-solving methodically, while my confidence empowers me to confront challenges with determination.",
                //   style: TextStyle(
                //     fontFamily: 'poppinslight',
                //     fontSize: 15,
                //     color: Colors.black
                //   ),
                // ),
              ),

              AnimatedButton(
                animatedOn: AnimatedOn.onHover,
                height: 50,
                width: 150,
                text: 'My Resume',
                isReverse: true,
                selectedTextColor: Colors.white,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontFamily: 'poppinsbold',
                  fontSize: 20,
                ),
                backgroundColor: Colors.transparent,
                borderColor: Colors.black,
                borderRadius: 0,
                borderWidth: 4,
                onPress: () => launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
              ),

              // ElevatedButton(
              //   onPressed: () => launchUrl(''),
              //   style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.transparent,
              //     shadowColor: Colors.transparent,
              //     side: const BorderSide(color: Colors.black, width: 4),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(2.0),
              //     ),
              //   ),
              //   child: const Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              //     child: Row(
              //       mainAxisSize: MainAxisSize.min,
              //       children: [
              //         Text(
              //           'My resume',
              //           overflow: TextOverflow.ellipsis,
              //           style: TextStyle(
              //               fontFamily: 'poppinsbold',
              //               fontSize: 20,
              //               color: Colors.black,
              //             )
              //         ),
      
              //         SizedBox(width: 10,),
      
              //         Icon(Icons.file_download_outlined, size: 40, color: Colors.black,)
              //       ],
              //     ),
              //   ),
              // ),


            ],
          ),
    
          // const SizedBox(width: 40),
    
          
    
        ],
      ),
    );
  }
}