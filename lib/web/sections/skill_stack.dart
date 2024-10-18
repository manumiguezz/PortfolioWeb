import 'package:flutter/material.dart';
import 'package:portfolio_web_version/exports/widgets.dart';

class MyStack extends StatelessWidget {
  
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double stackSize = widthQuery * 0.074;
    double nameSize = widthQuery * 0.010;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.15),
      child: Column(
        children: [
      
          Text(
            overflow: TextOverflow.ellipsis,
            'My Stack',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinsbold',
              fontSize: widthQuery * 0.07
            ),
          ),
      
          SizedBox(height: heightQuery * 0.09,),
      
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                SizedBox(
                  width: widthQuery,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                                  
                      TechStack(asset: 'java.png', techName: 'Java', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'android.png', techName: 'Android', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'dart.png', techName: 'Dart', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'html.png', techName: 'HTML', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'css.png', techName: 'CSS', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'mysql.png', techName: 'MySQL', stackSize: stackSize, nameSize: nameSize),
                                  
                    ],
                  ),
                ),

                SizedBox(height: heightQuery * 0.07,),
      
                SizedBox(
                  width: widthQuery,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      TechStack(asset: 'spring.png', techName: 'Spring', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'javafx.png', techName: 'JavaFX', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'hibernate.png', techName: 'Hibernate', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'springboot.png', techName: 'Spring Boot', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'flutter.png', techName: 'Flutter', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'git.png', techName: 'Git', stackSize: stackSize, nameSize: nameSize),
                  
                    ],
                  ),
                ),
      
                SizedBox(height: heightQuery * 0.07,),
      
                SizedBox(
                  width: widthQuery,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      TechStack(asset: 'postman.png', techName: 'Postman', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'maven.png', techName: 'Maven', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'thymeleaf.png', techName: 'Thymeleaf', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'docker.png', techName: 'Docker', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'firebase.png', techName: 'Firebase', stackSize: stackSize, nameSize: nameSize),
                      TechStack(asset: 'jwt.png', techName: 'JWT', stackSize: stackSize, nameSize: nameSize),
                  
                    ],
                  ),
                ),
              ],
            ),
          ), 
        ],
      ),
    );
  }
}


