import 'package:flutter/material.dart';

class AboutGroup extends StatelessWidget {
  const AboutGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Text(
          "As an aspiring backend software developer, I have a strong foundation in Java development, with expertise in Java 11 and 17. I'm proficient in object-oriented programming and can work effectively with other languages like Dart, C, as well as web technologies such as HTML and CSS.\n\n"
          "I also have extensive knowledge of frameworks like Spring Boot, Flutter, Hibernate, and JavaFX, enabling me to work on diverse projects. I've developed RESTful APIs with CRUD operations and established database connections. Additionally, I'm skilled in using dependency managers like Maven and Gradle for efficient project management and organization.\n\n"
          "Beyond my technical expertise, I possess effective and friendly communication skills, enabling seamless integration within teams. I easily adapt to new languages and tools, allowing me to contribute to a variety of projects. And employing critical thinking, I approach problem-solving methodically, while my confidence empowers me to confront challenges with determination.",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.justify,
        )

      ],
    );
  }
}