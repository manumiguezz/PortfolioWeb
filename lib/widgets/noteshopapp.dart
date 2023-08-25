import 'package:flutter/material.dart';

class NoteshopApp extends StatelessWidget {
  const NoteshopApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70,),
      child: Stack(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 0, ),
            child: Transform(
              transform: Matrix4.translationValues(-250, 0, 0),
              child: Image.asset('assets/images/project/noteshop_white_two.png', scale: 5.5,), 
            ),
          ),

          const Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            
              Padding(
                padding: EdgeInsets.only(left: 970),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        
                    SizedBox(height: 250,),
                          
                    Text(
                      'Noteshop',
                      style: TextStyle(
                        fontFamily: 'poppinsbold',
                        fontSize: 70,
                        color: Colors.white
                      ),
                    ),
                          
                    SizedBox(
                      width: 330,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                          Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                          Text('JWT', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                          Text('HTTP', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                          Text('RESTAPI', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                        ],
                      ),
                    ),
                          
                    SizedBox(height: 20),
                          
                    SizedBox(
                      width: 420,
                      child: Text(
                        'Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
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
              ),
            
            ]
          ),
          
        ],
      ),
    );
  }
}