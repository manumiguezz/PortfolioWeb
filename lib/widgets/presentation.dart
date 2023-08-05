import 'package:flutter/material.dart';
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
          const Row(
            children: [
              Text(
                "Hi, I'm ", 
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'poppinslight',
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
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: 80,
                    color: Colors.white
                  ),
                ),
              ),
            ],
          ),
          
          const Row(
            children: [
              Text(
                'a', 
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontFamily: 'poppinslight',
                  fontSize: 80,
                  color: Colors.white
                ),
              ),  
              AnimatedText(speed: 70000,),
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
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'CONTACT ME',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontFamily: 'poppinslight',
                        fontSize: 30,
                        color: Colors.white,
                      )
                  ),
      
                  SizedBox(width: 40,),
      
                  Icon(Icons.keyboard_arrow_down_outlined, size: 40,)
                ],
              ),
            ),
          ),      
        ],
        
      ),
    );
  }
}