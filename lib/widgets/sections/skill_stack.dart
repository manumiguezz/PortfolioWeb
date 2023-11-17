import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class MyStack extends StatelessWidget {

  final double iconStackScale;
  final double nameStackScale;
  final double fontSize;
  final double sizedBoxBetweenStack;
  final bool mobileVersion;
  final double iconReduction;
  
  const MyStack({
    super.key, 
    required this.iconStackScale, 
    required this.nameStackScale,
    required this.fontSize, 
    required this.sizedBoxBetweenStack, 
    required this.mobileVersion, 
    required this.iconReduction,
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;


    if (mobileVersion || widthQuery < 850) {

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: widthQuery * 0.085),
        child: Column(
          children: [

            const Text(
            overflow: TextOverflow.ellipsis,
            'My Stack',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinsbold',
              fontSize: 50
            ),
          ),

          SizedBox(height: heightQuery * 0.06,),

          SizedBox(
              height: heightQuery * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
        
                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                                    
                        TechStack(asset: 'java.png', techName: 'Java', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'c.png', techName: 'C', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'dart.png', techName: 'Dart', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                                    
                      ],
                    ),
                  ),
        
        
                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        TechStack(asset: 'spring.png', techName: 'Spring', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'javafx.png', techName: 'JavaFX', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'hibernate.png', techName: 'Hibernate', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                    
                      ],
                    ),
                  ),
        
                  // const SizedBox(height: 10,),
        
                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        TechStack(asset: 'postman.png', techName: 'Postman', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'maven.png', techName: 'Maven', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'thymeleaf.png', techName: 'Thymeleaf', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                    
                      ],
                    ),
                  ),

                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        TechStack(asset: 'css.png', techName: 'CSS', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'mysql.png', techName: 'MySQL', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'flutter.png', techName: 'Flutter', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                    
                      ],
                    ),
                  ),

                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        TechStack(asset: 'html.png', techName: 'HTML', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'springboot.png', techName: 'Spring Boot', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'docker.png', techName: 'Docker', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),

                      ],
                    ),
                  ),

                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        TechStack(asset: 'git.png', techName: 'Git', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'firebase.png', techName: 'Firebase', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        TechStack(asset: 'jwt.png', techName: 'JWT', stackSize: iconStackScale + iconReduction, nameSize: nameStackScale),
                        
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      );
    } else {

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
                fontSize: fontSize
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
                                    
                        TechStack(asset: 'java.png', techName: 'Java', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'c.png', techName: 'C', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'dart.png', techName: 'Dart', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'html.png', techName: 'HTML', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'css.png', techName: 'CSS', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'mysql.png', techName: 'MySQL', stackSize: iconStackScale, nameSize: nameStackScale),
                                    
                      ],
                    ),
                  ),

                  SizedBox(height: heightQuery * 0.07,),
        
                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        TechStack(asset: 'spring.png', techName: 'Spring', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'javafx.png', techName: 'JavaFX', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'hibernate.png', techName: 'Hibernate', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'springboot.png', techName: 'Spring Boot', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'flutter.png', techName: 'Flutter', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'git.png', techName: 'Git', stackSize: iconStackScale, nameSize: nameStackScale),
                    
                      ],
                    ),
                  ),
        
                  SizedBox(height: heightQuery * 0.07,),
        
                  SizedBox(
                    width: widthQuery,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                        TechStack(asset: 'postman.png', techName: 'Postman', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'maven.png', techName: 'Maven', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'thymeleaf.png', techName: 'Thymeleaf', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'docker.png', techName: 'Docker', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'firebase.png', techName: 'Firebase', stackSize: iconStackScale, nameSize: nameStackScale),
                        TechStack(asset: 'jwt.png', techName: 'JWT', stackSize: iconStackScale, nameSize: nameStackScale),
                    
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
}

