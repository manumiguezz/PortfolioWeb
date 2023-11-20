import 'package:flutter/material.dart';
import 'package:portfolio_web_version/utilities/custompainter/white_flag_down.dart';
import 'package:portfolio_web_version/utilities/custompainter/white_flag_up.dart';
import 'package:portfolio_web_version/widgets/custom_animated_button.dart';

class AboutMeTest extends StatelessWidget {
  const AboutMeTest({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = widthQuery * 0.012;


    return Column(
      children: [

        Transform.translate(
          offset: const Offset(0, 5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(painter: WhiteFlagUp())
          ),
        ),

        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Padding(
                padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.15),
                child: Row(
                  children: [
                    Text( 
                      'About me',
                      style: TextStyle(
                        fontFamily: 'poppinsbold',
                        fontSize: widthQuery * 0.07,
                        color: Colors.black
                      ),
                    ),
              
                    Text(
                      "As an aspiring backend software developer, I have a strong foundation in Java development, with expertise in Java 11 and 17. I'm proficient in object-oriented programming and can work effectively with other languages like Dart, C, as well as web technologies such as HTML and CSS.\n\n"
                      "I also have extensive knowledge of frameworks like Spring Boot, Flutter, Hibernate, and JavaFX, enabling me to work on diverse projects. I've developed RESTful APIs with CRUD operations and established database connections. Additionally, I'm skilled in using dependency managers like Maven and Gradle for efficient project management and organization.\n\n"
                      "Beyond my technical expertise, I possess effective and friendly communication skills, enabling seamless integration within teams. I easily adapt to new languages and tools, allowing me to contribute to a variety of projects. And employing critical thinking, I approach problem-solving methodically, while my confidence empowers me to confront challenges with determination.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'poppinslight',
                        fontSize: fontSize
                      ),
                    ),
                  ],
                ),
              ),

              

              SizedBox(height: heightQuery * 0.04,),

            ],
          ),
        ),

        Transform.translate(
          offset: const Offset(0, -5),
          child: SizedBox(
            height: heightQuery * 0.2,
            width: widthQuery,
            child: CustomPaint(painter: WhiteFlagDown()),
          ),
        ),
      ],
    );
    
  }
}