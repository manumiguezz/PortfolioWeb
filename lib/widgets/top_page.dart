import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_web/widgets/animated_text.dart';


class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [


        Container(
          color: const Color.fromARGB(66, 114, 114, 114),
          height: 753, 
        ),

        

        Padding(
          padding: const EdgeInsets.only(top: 200, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
        
              Text(
                "Hi!\nI'm Manuel Miguez,", 
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 80,
                  color: Colors.white
                ),
              ),
              
              Row(
                children: [
                  Text(
                    'a', 
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 80,
                      color: Colors.white
                    ),
                  ),  
                  const AnimatedText(speed: 70000,),
                ],
              )
             
            ],
        
          ),
        )



      ],
    );
  }
}