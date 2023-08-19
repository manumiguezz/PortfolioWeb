import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [

        Text(
          'My Stack',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinsbold',
            fontSize: 60
          ),
        ),

        SizedBox(height: 20,),

        SizedBox(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
              
                    TechContainer(asset: 'java.png', techName: 'JAVA'),
                    TechContainer(asset: 'c.png', techName: 'C'),
                    TechContainer(asset: 'dart.png', techName: 'DART'),
                    TechContainer(asset: 'html.png', techName: 'HTML'),
                    TechContainer(asset: 'css.png', techName: 'CSS'),
                    TechContainer(asset: 'mysql.png', techName: 'MYSQL'),
              
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    TechContainer(asset: 'spring.png', techName: 'SPRING'),
                    TechContainer(asset: 'javafx.png', techName: 'JAVAFX'),
                    TechContainer(asset: 'hibernate.png', techName: 'HIBERNATE'),
                    TechContainer(asset: 'springboot.png', techName: 'SPRING BOOT'),
                    TechContainer(asset: 'flutter.png', techName: 'FLUTTER'),
                    TechContainer(asset: 'git.png', techName: 'GIT'),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    TechContainer(asset: 'postman.png', techName: 'POSTMAN'),
                    TechContainer(asset: 'maven.png', techName: 'MAVEN'),
                    TechContainer(asset: 'thymeleaf.png', techName: 'THYMELEAF'),
                    TechContainer(asset: 'docker.png', techName: 'DOCKER'),
                    TechContainer(asset: 'firebase.png', techName: 'FIREBASE'),
                    TechContainer(asset: 'json.png', techName: 'JSON'),

                  ],
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}

