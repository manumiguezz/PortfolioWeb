import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class MyStack extends StatelessWidget {
  const MyStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double pagewidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        children: [
      
          const Text(
            overflow: TextOverflow.ellipsis,
            'My Stack',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinsbold',
              fontSize: 60
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
                  child: const Row(
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
      
      
                SizedBox(
                  width: pagewidth,
                  child: const Row(
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
      
                // const SizedBox(height: 10,),
      
                SizedBox(
                  width: pagewidth,
                  child: const Row(
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
      ),
    );
  }
}

