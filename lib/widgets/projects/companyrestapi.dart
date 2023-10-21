import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/widgets.dart';

class CompanyRestApi extends StatelessWidget {

  final double scaleFactorSum;

  const CompanyRestApi({
    super.key, 
    required this.scaleFactorSum,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
    
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      
                const Text(
                  'Company REST API',
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: 70,
                    color: Colors.white
                  ),
                ),
                      
                const SizedBox(
                  width: 670,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('JAVA', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('SPRING BOOT', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('JDBC', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('MYSQL', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('JPA', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('CRUD', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      Text('SPRING SECURITY', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                    ],
                  ),
                ),
                      
                const SizedBox(height: 20),
                      
                const SizedBox(
                  width: 670,
                  child: Text(
                    "This example of a company REST API utilizes Spring Boot as its foundational framework, and it's mainly built on Java. It seamlessly incorporates a MySQL database through JDBC and Spring Data JPA, reducing the codebase by approximately 70%. Security enhancements, such as Bcrypt-based password encryption, are integrated using Spring Security. The API also includes CRUD methods for smooth database updates via HTTP requests.",
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'poppinslight',
                        fontSize: 20,
                    )
                  ),
                ),
                const SizedBox(height: 20),
                AnimatedButton(
                  animatedOn: AnimatedOn.onHover,
                  height: 50,
                  width: 130,
                  text: 'Github',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.CENTER_LR_IN,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'poppinslight',
                    fontSize: 20,
                  ),
                  backgroundColor: Colors.transparent,
                  borderColor: Colors.white,
                  borderRadius: 0,
                  borderWidth: 2,
                  onPress: () => launchUrl('https://github.com/manumiguezz/CompanySpringBootRESTAPI'),
                ),
                      
              ],
            ),
          ),
    
          Transform(
            transform: Matrix4.translationValues(0, 80, 0),
            child: Transform.scale(
              scale: 1.3,
              child: ResponsiveImage(
                imageAsset: 'assets/images/project/companyrestapi.png', 
                scaleFactor: 0.6 + scaleFactorSum,
              ),
            )
          ),
        ],
      ),
    );
  }
}