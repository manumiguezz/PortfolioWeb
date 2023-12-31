import 'package:flutter/material.dart';
import '../../exports/widgets.dart';

class CompanyRestApiMobile extends StatelessWidget {

  const CompanyRestApiMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double subtitleSize = widthQuery * 0.04;

    return Column(
      children: [

        Text(
          'REST API APP',
          style: TextStyle(
            fontFamily: 'poppinsbold',
            fontSize: widthQuery * 0.1,
            color: Colors.white
          ),
        ),

        SizedBox(height: heightQuery * 0.01),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('JAVA', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('SPRING BOOT', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('JDBC', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('MYSQL', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
            Text('CRUD', style: TextStyle(fontFamily: 'poppinsregular', fontSize: subtitleSize, color: Colors.white)),
          ],
        ),

        SizedBox(height: heightQuery * 0.01),

        Text(
          "This example of a company REST API utilizes Spring Boot as its foundational framework, and it's mainly built on Java. It seamlessly incorporates a MySQL database through JDBC and Spring Data JPA, reducing the codebase by approximately 70%. Security enhancements, such as Bcrypt-based password encryption, are integrated using Spring Security. The API also includes CRUD methods for smooth database updates via HTTP requests.",
          softWrap: true,
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'poppinslight',
              fontSize: widthQuery * 0.04,
          )
        ),

        SizedBox(height: heightQuery * 0.02),

        AnimatedButton(
          text: 'Github',
          textStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'poppinslight',
            fontSize: widthQuery * 0.04,
          ),
          onPress: () => launchUrl('https://github.com/manumiguezz/SpringbootEventsCRUD'),
          animatedOn: AnimatedOn.onHover,
          height: heightQuery * 0.05,
          width: widthQuery,
          transitionType: TransitionType.CENTER_LR_IN,
          borderColor: Colors.white,
          backgroundColor: Colors.transparent,
          selectedTextColor: Colors.black,
          borderRadius: 0,
          borderWidth: widthQuery * 0.002,
          isReverse: true,
        ),

        SizedBox(height: heightQuery * 0.1),

        Transform.scale(
          scale: 1.5,
          child: SizedBox(
            width: widthQuery,
            child: Image.asset('assets/images/project/companyrestapi.png'),
          ),
        ),

        SizedBox(height: heightQuery * 0.05),
        
      ],
    );
  }
}