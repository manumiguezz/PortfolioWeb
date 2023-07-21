import 'package:flutter/material.dart';

class CustomSingleChildScrollView extends StatelessWidget {
  const CustomSingleChildScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 1000, left: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text('Noteshop App',
                        style: TextStyle(fontFamily: 'madetommybold', fontSize: 50),
                        textAlign: TextAlign.start,
                        ),
                              
                      Text('Noteshop is a Dart/Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
                        style: TextStyle(fontFamily: 'madetommy', fontSize: 15),
                        textAlign: TextAlign.justify,
                        ),
                    ],
                  ),
                ),
              ),

              Container(
                color: Colors.blue,
                height: 300,
              )
            ],
          )
          
        ],
      ),
    );
  }
}