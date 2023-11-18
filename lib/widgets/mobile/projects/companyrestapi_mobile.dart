import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';

class CompanyRestApiMobile extends StatelessWidget {

  final bool mobileVersion;

  const CompanyRestApiMobile({
    super.key, 
    required this.mobileVersion
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double subtitleSize = widthQuery * 0.013;

    return Padding(
      padding: EdgeInsets.only(left: widthQuery * 0.07),
      child: Row(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
    
              Text(
                'Company REST API',
                style: TextStyle(
                  fontFamily: 'poppinsbold',
                  fontSize: widthQuery * 0.05,
                  color: Colors.white
                ),
              ),
    
              SizedBox(
                width: widthQuery * 0.477,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('JAVA', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('SPRING BOOT', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('JDBC', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('MYSQL', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('JPA', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('CRUD', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                    Text('SPRING SECURITY', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
                  ],
                ),
              ),
    
              SizedBox(height: heightQuery * 0.025),
    
              SizedBox(
                width: widthQuery * 0.477,
                child: Text(
                  "This example of a company REST API utilizes Spring Boot as its foundational framework, and it's mainly built on Java. It seamlessly incorporates a MySQL database through JDBC and Spring Data JPA, reducing the codebase by approximately 70%. Security enhancements, such as Bcrypt-based password encryption, are integrated using Spring Security. The API also includes CRUD methods for smooth database updates via HTTP requests.",
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppinslight',
                      fontSize: widthQuery * 0.010,
                  )
                ),
              ),
    
              SizedBox(height: heightQuery * 0.025),
    
              AnimatedButton(
              text: 'Github',
              textStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'poppinslight',
                fontSize: widthQuery * 0.013,
              ),
              onPress: () => launchUrl('https://github.com/manumiguezz/CompanySpringBootRESTAPI'),
              animatedOn: AnimatedOn.onHover,
              height: heightQuery * 0.08,
              width: widthQuery * 0.477,
              transitionType: TransitionType.CENTER_LR_IN,
              borderColor: Colors.white,
              backgroundColor: Colors.transparent,
              selectedTextColor: Colors.black,
              borderRadius: 0,
              borderWidth: 2,
              isReverse: true,
              ),
    
            ],
          ),

          Transform(
            transform: Matrix4.translationValues(0, 120, 0),
            child: Transform.scale(
              scale: 1.5,
              child: SizedBox(
                width: widthQuery * 0.4,
                child: Image.asset('assets/images/project/companyrestapi.png'),
              ),
            ),
          )

        ],
      ),
    );
  }
}