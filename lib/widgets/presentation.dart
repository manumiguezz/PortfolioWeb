import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_web/widgets/url_launcher.dart';

import 'animated_text.dart';

class Presentation extends StatelessWidget {
  const Presentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200, left: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Hi, I'm ", 
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize: 80,
                  color: Colors.white
                ),
              ),
              
              Expanded(
                child: Text(
                  "Manuel Miguez,", 
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    fontSize: 80,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
          
          Row(
            children: [
              Text(
                'a', 
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'CONTACT ME',
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 30,
                        color: Colors.white,
                      )
                  ),
      
                  const SizedBox(width: 40,),
      
                  const Icon(Icons.keyboard_arrow_down_outlined, size: 40,)
                ],
              ),
            ),
          ),      
        ],
        
      ),
    );
  }
}