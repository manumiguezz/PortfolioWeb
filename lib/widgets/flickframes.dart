import 'package:flutter/material.dart';
import 'package:pretty_animated_buttons/pretty_animated_buttons.dart';

class Flickframes extends StatelessWidget {
  const Flickframes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70,),
      child: Stack(
        children: [
          Row(
            children: [
            
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 250,),
            
                  const Text(
                    'Flickframes',
                    style: TextStyle(
                      fontFamily: 'poppinsbold',
                      fontSize: 70,
                      color: Colors.white
                    ),
                  ),
            
                  const SizedBox(
                    width: 330,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('FLUTTER', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                        Text('DART', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                        Text('ISARDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                        Text('THEMOVIEDB', style: TextStyle(fontFamily: 'poppinsregular', fontSize: 15, color: Colors.white)),
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 20),
            
                  const SizedBox(
                    width: 420,
                    child: Text(
                      'FlickerFrames is an entertainment app designed for movie enthusiasts, providing a comprehensive collection of movies, including information about vote averages, descriptions, and cast details. With FlickerFrames, you can explore a wide range of movies and discover similar titles that match your interests.',
                      softWrap: true,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'poppinslight',
                          fontSize: 20,
                      )
                    ),
                  ),

                  PrettyBorderButton(
                    label: 'Github',
                    onPressed: () {},
                    borderColor: Colors.red,
                    bgColor: Colors.black,
                    borderWidth: 9000,
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppinslight',
                      fontSize: 20,
                    )
                  )
            
                ],
              ),
            
            ]
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 0, ),
            child: Transform(
              transform: Matrix4.translationValues(410, 0, 0),
              child: Image.asset('assets/images/project/flickframes_white.png', scale: 4.6,), 
            ),
          )
          
        ],
      ),
    );
  }
}