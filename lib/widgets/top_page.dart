import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_web/widgets/animated_text.dart';
import 'package:personal_web/widgets/custom_particle_background.dart';
import 'package:personal_web/widgets/url_launcher.dart';
import 'package:personal_web/widgets/widgets.dart';


class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        const CustomParticleBackground(),

        // const SideVignette(),

        Padding(
          padding: const EdgeInsets.only(top: 200, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
        
              Row(
                children: [
                  Text(
                    "Hi, I'm ", 
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 80,
                      color: Colors.white
                    ),
                  ),

                  Text(
                    "Manuel Miguez,", 
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: 80,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
              
              Row(
                children: [
                  Text(
                    'a', 
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 80,
                      color: Colors.white
                    ),
                  ),  
                  const AnimatedText(speed: 70000,),
                ],
              ),

              const SizedBox(height: 30,),

              ElevatedButton(
                onPressed: () => launchUrl('https://www.linkedin.com/in/manuelmiguezlauria/'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  side: const BorderSide(color: Colors.white, width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'CONTACT ME',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 30,
                        color: Colors.white
                      )
                  ),
                ),
              ),      
            ],
        
          ),
        ),

      ],
    );
  }
}



