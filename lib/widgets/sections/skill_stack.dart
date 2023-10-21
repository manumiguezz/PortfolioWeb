import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class MyStack extends StatelessWidget {

  final double iconStackScale;
  final double nameStackScale;
  final double horizontalTechPadding;
  final double fontSize;
  final double sizedBoxBetweenStack;
  
  const MyStack({
    super.key, 
    required this.iconStackScale, 
    required this.nameStackScale, 
    required this.horizontalTechPadding, 
    required this.fontSize, 
    required this.sizedBoxBetweenStack,
  });

  @override
  Widget build(BuildContext context) {

    double pagewidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalTechPadding),
      child: Column(
        children: [
      
          Text(
            overflow: TextOverflow.ellipsis,
            'My Stack',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinsbold',
              fontSize: fontSize
            ),
          ),
      
          const SizedBox(height: 60,),
      
          SizedBox(
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                SizedBox(
                  width: pagewidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                                  
                      TechStack(asset: 'java.png', techName: 'Java', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'c.png', techName: 'C', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'dart.png', techName: 'Dart', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'html.png', techName: 'HTML', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'css.png', techName: 'CSS', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'mysql.png', techName: 'MySQL', stackScale: iconStackScale, nameScale: nameStackScale),
                                  
                    ],
                  ),
                ),
      
      
                SizedBox(
                  width: pagewidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      TechStack(asset: 'spring.png', techName: 'Spring', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'javafx.png', techName: 'JavaFX', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'hibernate.png', techName: 'Hibernate', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'springboot.png', techName: 'Spring Boot', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'flutter.png', techName: 'Flutter', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'git.png', techName: 'Git', stackScale: iconStackScale, nameScale: nameStackScale),
                  
                    ],
                  ),
                ),
      
                // const SizedBox(height: 10,),
      
                SizedBox(
                  width: pagewidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      TechStack(asset: 'postman.png', techName: 'Postman', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'maven.png', techName: 'Maven', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'thymeleaf.png', techName: 'Thymeleaf', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'docker.png', techName: 'Docker', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'firebase.png', techName: 'Firebase', stackScale: iconStackScale, nameScale: nameStackScale),
                      TechStack(asset: 'jwt.png', techName: 'JWT', stackScale: iconStackScale, nameScale: nameStackScale),
                  
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

