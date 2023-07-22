import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomSingleChildScrollView extends StatelessWidget {
  const CustomSingleChildScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 100, left: 290),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('IOS & ANDROID',
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          fontSize: 20, 
                          color: Colors.white),
                        textAlign: TextAlign.left,
                        ),
                      
                      Text('NOTESHOP APP',
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          fontSize: 50, 
                          color: Colors.white),
                        textAlign: TextAlign.left,
                        ),

                      const SizedBox(height: 8),
                              
                      Text('Noteshop is a Dart & Flutter app designed to enhance your shopping experience. Integrated with the Teslo Shop backend, this app leverages Riverpod, Go Router, and CRUD REST API endpoints to provide a seamless shopping journey. With Noteshop, you can effortlessly browse and purchase products while enjoying the ability to add notes to your products.',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w300,
                          height: 1.3,
                          fontSize: 17, 
                          color: Colors.white),
                        textAlign: TextAlign.justify,
                        ),

                      const SizedBox(height: 25),

                      ElevatedButton(
                        onPressed: () {}, 
                        child: Text('EXPLORE MORE', style: TextStyle(fontWeight: FontWeight.bold),),
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(180, 50))
                        ),
                      )

                      
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 290),
                child: Placeholder(
                  color: Colors.red,
                ),
              )
            ],
          )
          
        ],
      ),
    );
  }
}