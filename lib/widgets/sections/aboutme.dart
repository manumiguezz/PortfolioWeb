import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/custom_animated_button.dart';

class AboutMeTwo extends StatelessWidget {
  const AboutMeTwo({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = widthQuery * 0.010;


    return Container(
      color: Colors.white,
      child: Column(
        children: [
        // whitestrokeup
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.07),
          child: Row(
            children: [
              
              Transform(
                transform: Matrix4.translationValues(0, 0, 0),
                child: Image.asset(
                  'assets/images/profile.png',
                  height: heightQuery * 0.88,
                )
              ),
        
              SizedBox(width: widthQuery * 0.05,),
        
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About me',
                    style: TextStyle(
                      fontFamily: 'poppinsbold',
                      fontSize: widthQuery * 0.07,
                      color: Colors.black
                    ),
                  ),

                  SizedBox(
                    width: widthQuery * 0.35,
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'poppinslight',
                          fontSize: fontSize
                        ),
                        children: [
                          const TextSpan(text: 'As an aspiring '),
                          TextSpan(
                            text: 'backend software developer',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', I have a strong foundation in '),
                          TextSpan(
                            text: 'Java',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' development, with expertise in Java 11 and 17. I\'m proficient in '),
                          TextSpan(
                            text: 'object-oriented programming',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' and can work effectively with other languages like '),
                          TextSpan(
                            text: 'Dart',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', '),
                          TextSpan(
                            text: 'C',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', as well as web technologies such as '),
                          TextSpan(
                            text: 'HTML',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'CSS',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: '.\n\nI also have extensive knowledge of frameworks like '),
                          TextSpan(
                            text: 'Spring Boot',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', '),
                          TextSpan(
                            text: 'Flutter',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', '),
                          TextSpan(
                            text: 'Hibernate',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', and '),
                          TextSpan(
                            text: 'JavaFX',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', enabling me to work on diverse projects. I\'ve developed '),
                          TextSpan(
                            text: 'RESTful APIs',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' with '),
                          TextSpan(
                            text: 'CRUD',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' operations and established database connections. Additionally, I\'m skilled in using dependency managers like '),
                          TextSpan(
                            text: 'Maven',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Gradle',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' for efficient project management and organization.\n\nBeyond my technical expertise, I possess effective and friendly '),
                          TextSpan(
                            text: 'communication',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' skills, enabling seamless integration within teams. I easily adapt to new languages and tools, allowing me to contribute to a variety of projects. And employing '),
                          TextSpan(
                            text: 'critical thinking',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ', I approach '),
                          TextSpan(
                            text: 'problem-solving',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
                          ),
                          const TextSpan(text: ' methodically, while my confidence empowers me to confront challenges with determination.'),
                        ],
                      ),
                    )
                  ),

                  SizedBox(height: heightQuery * 0.04,),

                  const CustomAnimatedButton(invertedVersion: false)

                    
                ],
              ),
            ],
          ),
        )
        // whitestrokedown
        ],
      ),
    );
    
  }
}