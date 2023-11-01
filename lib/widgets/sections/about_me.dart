import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/custom_animated_button.dart';

class AboutMe extends StatelessWidget {

  final bool mobileVersion;
  final bool invertedVersion;

  const AboutMe({
    super.key, 
    required this.mobileVersion, 
    required this.invertedVersion,
  });


  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double aboutMeDescriptionFontSize = 15;
    double reduceAboutMe = 0;

    Color color = invertedVersion ? Colors.white : Colors.black;

    if (widthQuery < 390){
      reduceAboutMe = 18;
    }
    
    if (mobileVersion){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.085),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
      
                Transform(
                  transform: Matrix4.translationValues(0, -8, 0),
                  child: Image.asset(
                    'assets/images/profile.png',
                    width: widthQuery * 0.25,
                  )
                ),
      
                SizedBox(width: widthQuery * 0.03,),
      
                Text(
                  'About \nme',
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: 60 - reduceAboutMe,
                    height: 0.8,
                    color: color
                  ),
                ),
      
              ],
            ),
      
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                style: TextStyle(
                  color: color,
                  fontFamily: 'poppinslight',
                  fontSize: aboutMeDescriptionFontSize
                ),
                children: [
                  const TextSpan(text: 'As an aspiring '),
                  TextSpan(
                    text: 'backend software developer',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', I have a strong foundation in '),
                  TextSpan(
                    text: 'Java',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' development, with expertise in Java 11 and 17. I\'m proficient in '),
                  TextSpan(
                    text: 'object-oriented programming',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' and can work effectively with other languages like '),
                  TextSpan(
                    text: 'Dart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', '),
                  TextSpan(
                    text: 'C',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', as well as web technologies such as '),
                  TextSpan(
                    text: 'HTML',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' and '),
                  TextSpan(
                    text: 'CSS',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: '.\n\nI also have extensive knowledge of frameworks like '),
                  TextSpan(
                    text: 'Spring Boot',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', '),
                  TextSpan(
                    text: 'Flutter',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', '),
                  TextSpan(
                    text: 'Hibernate',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', and '),
                  TextSpan(
                    text: 'JavaFX',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', enabling me to work on diverse projects. I\'ve developed '),
                  TextSpan(
                    text: 'RESTful APIs',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' with '),
                  TextSpan(
                    text: 'CRUD',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' operations and established database connections. Additionally, I\'m skilled in using dependency managers like '),
                  TextSpan(
                    text: 'Maven',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' and '),
                  TextSpan(
                    text: 'Gradle',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' for efficient project management and organization.\n\nBeyond my technical expertise, I possess effective and friendly '),
                  TextSpan(
                    text: 'communication',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' skills, enabling seamless integration within teams. I easily adapt to new languages and tools, allowing me to contribute to a variety of projects. And employing '),
                  TextSpan(
                    text: 'critical thinking',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ', I approach '),
                  TextSpan(
                    text: 'problem-solving',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: aboutMeDescriptionFontSize),
                  ),
                  const TextSpan(text: ' methodically, while my confidence empowers me to confront challenges with determination.'),
                ],
              ),
            ),
      
          ],
        ),
      );
    }

    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
    
            Transform(
              transform: Matrix4.translationValues(0, 10, 0),
              child: Image.asset(
                'assets/images/profile.png',
                height: 630,
                width: 550,
              )
            ),
      
            const SizedBox(width: 50,),
      
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
                Text(
                  'About me',
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: 70,
                    color: color
                  ),
                ),
            
                const SizedBox(height: 10,),
            
                SizedBox(
                  width: 570,
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: TextStyle(
                        color: color,
                        fontFamily: 'poppinslight',
                        fontSize: 15
                      ),
                      children: const [
                        TextSpan(text: 'As an aspiring '),
                        TextSpan(
                          text: 'backend software developer',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', I have a strong foundation in '),
                        TextSpan(
                          text: 'Java',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' development, with expertise in Java 11 and 17. I\'m proficient in '),
                        TextSpan(
                          text: 'object-oriented programming',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' and can work effectively with other languages like '),
                        TextSpan(
                          text: 'Dart',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', '),
                        TextSpan(
                          text: 'C',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', as well as web technologies such as '),
                        TextSpan(
                          text: 'HTML',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'CSS',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: '.\n\nI also have extensive knowledge of frameworks like '),
                        TextSpan(
                          text: 'Spring Boot',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', '),
                        TextSpan(
                          text: 'Flutter',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', '),
                        TextSpan(
                          text: 'Hibernate',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', and '),
                        TextSpan(
                          text: 'JavaFX',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', enabling me to work on diverse projects. I\'ve developed '),
                        TextSpan(
                          text: 'RESTful APIs',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' with '),
                        TextSpan(
                          text: 'CRUD',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' operations and established database connections. Additionally, I\'m skilled in using dependency managers like '),
                        TextSpan(
                          text: 'Maven',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Gradle',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' for efficient project management and organization.\n\nBeyond my technical expertise, I possess effective and friendly '),
                        TextSpan(
                          text: 'communication',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' skills, enabling seamless integration within teams. I easily adapt to new languages and tools, allowing me to contribute to a variety of projects. And employing '),
                        TextSpan(
                          text: 'critical thinking',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ', I approach '),
                        TextSpan(
                          text: 'problem-solving',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        TextSpan(text: ' methodically, while my confidence empowers me to confront challenges with determination.'),
                      ],
                    ),
                  )
                ),

                const SizedBox(height: 20,),
    
                CustomAnimatedButton(invertedVersion: invertedVersion),
    
              ],
            ),
          ],
        ),
      ),
    );
  }
}

