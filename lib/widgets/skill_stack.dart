import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

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

        SizedBox(height: 60,),

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
              
                    TechStack(asset: 'java.png', techName: 'Java'),
                    TechStack(asset: 'c.png', techName: 'C'),
                    TechStack(asset: 'dart.png', techName: 'Dart'),
                    TechStack(asset: 'html.png', techName: 'HTML'),
                    TechStack(asset: 'css.png', techName: 'CSS'),
                    TechStack(asset: 'mysql.png', techName: 'MySQL'),
              
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 190),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    TechStack(asset: 'spring.png', techName: 'Spring'),
                    TechStack(asset: 'javafx.png', techName: 'JavaFX'),
                    TechStack(asset: 'hibernate.png', techName: 'Hibernate'),
                    TechStack(asset: 'springboot.png', techName: 'Spring Boot'),
                    TechStack(asset: 'flutter.png', techName: 'Flutter'),
                    TechStack(asset: 'git.png', techName: 'Git'),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 190),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  
                    TechStack(asset: 'postman.png', techName: 'Postman'),
                    TechStack(asset: 'maven.png', techName: 'Maven'),
                    TechStack(asset: 'thymeleaf.png', techName: 'Thymeleaf'),
                    TechStack(asset: 'docker.png', techName: 'Docker'),
                    TechStack(asset: 'firebase.png', techName: 'Firebase'),
                    TechStack(asset: 'jwt.png', techName: 'JWT'),

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

