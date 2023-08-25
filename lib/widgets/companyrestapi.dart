import 'package:flutter/material.dart';

class CompanyRestApi extends StatelessWidget {
  const CompanyRestApi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70,),
      child: Stack(
        children: [
          const Row(
            children: [
            
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 250,),
            
                  Text(
                    'Company REST API',
                    style: TextStyle(
                      fontFamily: 'poppinsbold',
                      fontSize: 70,
                      color: Colors.white
                    ),
                  ),
            
                  SizedBox(
                    width: 680,
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
            
                  SizedBox(height: 20),
            
                  SizedBox(
                    width: 680,
                    child: Text(
                      "This company REST API has been entirely constructed and designed using Java, with Spring Boot serving as the foundational framework for project organization. This API seamlessly integrates a MySQL database, employing JDBC to effectively incorporate it into the system's architecture. By leveraging Spring Data JPA, a remarkable reduction of about 70% in the necessary codebase has been achieved. Security enhancements are implemented through Spring Security, encompassing password encryption utilizing the Bcrypt algorithm. The development process also encompasses the creation of CRUD methods, thereby enabling smooth database updates and modifications through HTTP requests.",
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppinslight',
                          fontSize: 20,
                      )
                    ),
                  )
            
                ],
              ),
            
            ]
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 0, ),
            child: Transform(
              transform: Matrix4.translationValues(250, -100, 0),
              child: Image.asset('assets/images/project/companyrestapi.png', scale: 3,), 
            ),
          )
          
        ],
      ),
    );
  }
}