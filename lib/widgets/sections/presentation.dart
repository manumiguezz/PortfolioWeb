import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';
import '../animated_text.dart';

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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              GestureDetector(
                onTap: () => launchUrl('https://github.com/manumiguezz'),
                child: MouseRegion(
                  cursor: MaterialStateMouseCursor.clickable,
                  child: Image.asset('assets/icons/socialmedia/github_black.png', color: Colors.white, scale: 12,)
                ),
              ),

              const SizedBox(width: 22,),


              
              GestureDetector(
                onTap: () => launchUrl('mailto:manuelmiguezlauria@gmail.com'),
                child: MouseRegion(
                  cursor: MaterialStateMouseCursor.clickable,
                  child: Image.asset('assets/icons/socialmedia/email_black.png', color: Colors.white, scale: 11,)
                ),
              ),

              const SizedBox(width: 24,),
              
              GestureDetector(
                onTap: () => launchUrl('https://www.linkedin.com/in/manuelmiguezlauria/'),
                child: MouseRegion(
                  cursor: MaterialStateMouseCursor.clickable,
                  child: Image.asset('assets/icons/socialmedia/linkedin_black.png', color: Colors.white, scale: 11,)
                ),
              ),
              

            ],
          ),      

        ],
        
      ),
    );
  }
}