import 'package:flutter/material.dart';
import 'package:portfolio_web_version/widgets/animated_text.dart';
import 'package:portfolio_web_version/widgets/social_button.dart';

class Presentation extends StatelessWidget {

  const Presentation({super.key, });

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = widthQuery * 0.065;


    return Padding(
      padding: EdgeInsets.only(top: heightQuery * 0.2, left: widthQuery * 0.07),
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
                  'Manuel Miguez,', 
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
                mobileVersion: false,
              ),
            ],
          ),
      
          SizedBox(height: heightQuery * 0.02),
      
          SizedBox(
            height: heightQuery * 0.15,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
          
                const SocialButton(imageUrl: 'assets/icons/socialmedia/github_white.png', url: 'https://github.com/manumiguezz'),
            
                SizedBox(width: widthQuery * 0.02),
          
                const SocialButton(imageUrl: 'assets/icons/socialmedia/email_white.png', url: 'mailto:manuelmiguezlauria@gmail.com'),
          
                SizedBox(width: widthQuery * 0.02),
          
                const SocialButton(imageUrl: 'assets/icons/socialmedia/linkedin_white.png', url: 'https://www.linkedin.com/in/manuelmiguezlauria/'),
                
              ],
            ),
          ),      
    
        ],
        
      ),
    );
  }
}