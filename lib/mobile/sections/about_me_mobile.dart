import 'package:flutter/material.dart';
import '../../exports/utils.dart';
import '../../exports/widgets.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = widthQuery * 0.04;

    return Column(
      children: [

        Transform.translate(
          offset: const Offset(0, 5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(
              painter: WhiteFlagUpMobile(),
            ),
          ),
        ),

        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: heightQuery * 0.03,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Transform.translate(
                      offset: const Offset(0, -5),
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: widthQuery * 0.26,
                      ),
                    ),
                
                    SizedBox(width: widthQuery * 0.04,),
                
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'About\nMe',
                          style: TextStyle(
                            height: heightQuery * 0.0012,
                            fontFamily: 'poppinsbold',
                            color: Colors.black,
                            fontSize: widthQuery * 0.155
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: heightQuery * 0.01),
              
                SizedBox(
                  width: widthQuery,
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
            
                const CustomAnimatedButton(),

                SizedBox(height: heightQuery * 0.04,),
                
              ],
            ),
          ),
        ),

        Transform.translate(
          offset: const Offset(0, -5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(
              painter: WhiteFlagDownMobile(),
            ),
          ),
        ),
      ],
    );  
  }
}