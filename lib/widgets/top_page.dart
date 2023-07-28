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
          color: Color.fromARGB(66, 114, 114, 114),
          height: 753, 
        ),

        Padding(
          padding: const EdgeInsets.only(top: 200, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
        
              Text(
                'Manuel Miguez Lauría',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 80,
                  color: Colors.white
                ),
              ),
        
              Row(
                children: [
        
                  const SizedBox(width: 2,),
        
                  Image.asset(
                    'assets/icons/arrow.png',
                    scale: 35,
                  ),
        
                  const SizedBox(width: 10,),
        
                  const AnimatedText()
                ],
              )
             
            ],
        
          ),
        )



      ],
    );
  }
}