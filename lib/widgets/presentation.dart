import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
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
      
          Row(
            children: [

              AnimatedButton(
                animatedOn: AnimatedOn.onHover,
                height: 50,
                width: 150,
                text: 'About Me',
                isReverse: true,
                selectedTextColor: Colors.black,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppinslight',
                  fontSize: 20,
                ),
                backgroundColor: Colors.transparent,
                borderColor: Colors.white,
                borderRadius: 0,
                borderWidth: 2,
                onPress: () => launchUrl('https://github.com/manumiguezz/FlickFramesApp'),
              ),

              const SizedBox(width: 17,),

              ElevatedButton(
                onPressed: () => launchUrl('https://github.com/manumiguezz'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Colors.transparent, width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Image.asset('assets/icons/socialmedia/github_black_free.png', color: Colors.white, scale: 11.1,)
                  ),
                ),

              const SizedBox(width: 10,),
              
              
              ElevatedButton(
                onPressed: () => launchUrl('https://www.linkedin.com/in/manuelmiguezlauria/'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Colors.transparent, width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Image.asset('assets/icons/socialmedia/linkedin_black_free.png', color: Colors.white, scale: 11.1,)
                  ),
                ),

              const SizedBox(width: 10,),

              ElevatedButton(
                onPressed: () => launchUrl('mailto:manuelmiguezlauria@gmail.com'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Color.fromARGB(0, 255, 0, 0), width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Image.asset('assets/icons/socialmedia/email_black_free.png', color: Colors.white, scale: 11.1,)
                  ),
                ),

            ],
          ),      

          
        ],
        
      ),
    );
  }
}