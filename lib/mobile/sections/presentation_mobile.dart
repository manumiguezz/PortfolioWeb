import 'package:flutter/material.dart';
import '../../exports/widgets.dart';

class PresentationMobile extends StatelessWidget {

  const PresentationMobile({super.key});

  @override
  Widget build(BuildContext context) {

    double widthQuery = MediaQuery.of(context).size.width;
    double heightQuery = MediaQuery.of(context).size.height;
    double fontSize = widthQuery * 0.13;

    return Padding(
      padding: EdgeInsets.only(top: heightQuery * 0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
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

          Text(
            'Manu Miguez', 
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            softWrap: true,
            style: TextStyle(
              fontFamily: 'poppinsbold',
              fontSize: fontSize,
              color: Colors.white
            ),
          ),

          Row(
            children: [
              AnimatedText(
                speed: 100000,
                fontSizeAnimated: fontSize,
                mobileVersion: true,
              ),
            ],
          ),

          SizedBox(height: heightQuery * 0.05),
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              const SocialButton(imageUrl: 'assets/icons/socialmedia/github_white.png', url: 'https://github.com/manumiguezz'),
          
              SizedBox(width: widthQuery * 0.05),
        
              const SocialButton(imageUrl: 'assets/icons/socialmedia/email_white.png', url: 'mailto:manuelmiguezlauria@gmail.com'),
        
              SizedBox(width: widthQuery * 0.05),
        
              const SocialButton(imageUrl: 'assets/icons/socialmedia/linkedin_white.png', url: 'https://www.linkedin.com/in/manuelmiguezlauria/'),
              
            ],
          ),
    
        ],
        
      ),
    );
  }
}