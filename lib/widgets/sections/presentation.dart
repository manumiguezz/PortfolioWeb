import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/url_launcher.dart';
import '../animated_text.dart';

class Presentation extends StatelessWidget {

  late double fontSize;
  final double reduceIcon;
  final bool mobileVersion;

  Presentation({
    super.key, 
    required this.fontSize, 
    required this.reduceIcon, 
    required this.mobileVersion,
  });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    String name = (mobileVersion == true) ? 'Manu' : 'Manuel Miguez,';

    return Padding(
      padding: EdgeInsets.only(top: 200, left: widthQuery * 0.07),
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
                style: TextStyle(
                  fontFamily: 'poppinslight',
                  fontSize: fontSize,
                  color: Colors.white
                ),
              ),
              
              Expanded(
                child: Text(
                  name, 
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: 'poppinsbold',
                    fontSize: fontSize,
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
                style: TextStyle(
                  fontFamily: 'poppinslight',
                  fontSize: fontSize,
                  color: Colors.white
                ),
              ),  
              AnimatedText(
                speed: 70000,
                fontSizeAnimated: fontSize,
                mobileVersion: mobileVersion,
              ),
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
                  child: Image.asset('assets/icons/socialmedia/github_white.png', color: Colors.white, scale: 12 + reduceIcon,)
                ),
              ),
          
              const SizedBox(width: 22,),
          
              GestureDetector(
                onTap: () => launchUrl('mailto:manuelmiguezlauria@gmail.com'),
                child: MouseRegion(
                  cursor: MaterialStateMouseCursor.clickable,
                  child: Image.asset('assets/icons/socialmedia/email_white.png', color: Colors.white, scale: 10 + reduceIcon,)
                ),
              ),
          
              const SizedBox(width: 24,),
              
              GestureDetector(
                onTap: () => launchUrl('https://www.linkedin.com/in/manuelmiguezlauria/'),
                child: MouseRegion(
                  cursor: MaterialStateMouseCursor.clickable,
                  child: Image.asset('assets/icons/socialmedia/linkedin_white.png', color: Colors.white, scale: 11 + reduceIcon,)
                ),
              ),
              
            ],
          ),      
    
        ],
        
      ),
    );
  }
}