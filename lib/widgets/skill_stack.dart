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
              
                    TechContainer(asset: 'java.png', techName: 'Java'),
                    TechContainer(asset: 'c.png', techName: 'C'),
                    TechContainer(asset: 'dart.png', techName: 'Dart'),
                    TechContainer(asset: 'html.png', techName: 'HTML'),
                    TechContainer(asset: 'css.png', techName: 'CSS'),
                    TechContainer(asset: 'mysql.png', techName: 'MySQL'),
              
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    TechContainer(asset: 'spring.png', techName: 'Spring'),
                    TechContainer(asset: 'javafx.png', techName: 'JavaFX'),
                    TechContainer(asset: 'hibernate.png', techName: 'Hibernate'),
                    TechContainer(asset: 'springboot.png', techName: 'Spring Boot'),
                    TechContainer(asset: 'flutter.png', techName: 'Flutter'),
                    TechContainer(asset: 'git.png', techName: 'Git'),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    TechContainer(asset: 'postman.png', techName: 'Postman'),
                    TechContainer(asset: 'maven.png', techName: 'Maven'),
                    TechContainer(asset: 'thymeleaf.png', techName: 'Thymeleaf'),
                    TechContainer(asset: 'docker.png', techName: 'Docker'),
                    TechContainer(asset: 'firebase.png', techName: 'Firebase'),
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

