import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 40, right: 880),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
          Text(
            'About me',
            style: TextStyle(
              fontFamily: 'poppinsbold',
              fontSize: 70,
              color: Colors.black
            ),
          ),

          SizedBox(height: 20,),
      
          Text(
            textAlign: TextAlign.justify,
            softWrap: true,
            overflow: TextOverflow.clip,
            "As an aspiring backend software developer, I have a strong foundation in Java development, with expertise in Java 11 and 17. I'm proficient in object-oriented programming and can work effectively with other languages like Dart, C, C++, as well as web technologies such as HTML and CSS. \n\nI also have extensive knowledge of frameworks like Spring Boot, Flutter, Hibernate, and JavaFX, enabling me to work on diverse projects. I've developed RESTful APIs with CRUD operations and established database connections. Additionally, I'm skilled in using dependency managers like Maven and Gradle for efficient project management and organization.",
            style: TextStyle(
              fontFamily: 'poppinsregular',
              fontSize: 20,
              color: Colors.black
            ),
          ),
        
        ],
      ),
    );
  }
}