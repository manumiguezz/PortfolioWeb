import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_web/widgets/animated_text.dart';
import 'package:personal_web/widgets/particle/flutter_particle_background.dart';
import 'package:personal_web/widgets/side_gradient.dart';


class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ParticleBackground(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            particleColor: Color.fromARGB(66, 59, 59, 59),
            blur: true,
            highestSpeed: 0.4,
            multiColor: false,
            numberOfParticles: 90,
            blurIntensity: 15,
            allFilled: true,
            smallestSize: 80,
          ),
        ),

        GradientBorderWidget(
          gradientColors: [Colors.black, Colors.transparent], 
          borderWidth: MediaQuery.of(context).size.width
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