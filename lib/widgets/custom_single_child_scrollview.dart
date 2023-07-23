import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomSingleChildScrollView extends StatelessWidget {

  final String technologies;
  final String title;
  final String description;
  final String? assetImage; 

  const CustomSingleChildScrollView({
    super.key, 
    this.assetImage,
    required this.technologies, 
    required this.title, 
    required this.description, 
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 100, left: 290),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(technologies,
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          fontSize: 20, 
                          color: Colors.white),
                        textAlign: TextAlign.left,
                        ),
                      
                      Text(title,
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w600,
                          height: 1.3,
                          fontSize: 50, 
                          color: Colors.white),
                        textAlign: TextAlign.left,
                        ),

                      const SizedBox(height: 8),
                              
                      Text(description,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w300,
                          height: 1.3,
                          fontSize: 17, 
                          color: Colors.white),
                        textAlign: TextAlign.justify,
                        ),

                      const SizedBox(height: 25),

                      ElevatedButton(
                        onPressed: () {}, 
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(180, 50))
                        ),
                        child: const Text('EXPLORE MORE', style: TextStyle(fontWeight: FontWeight.bold),),
                      )
        
                    ],
                  ),
                ),
              ),

              if (assetImage == null) 
              const Padding(
                padding: EdgeInsets.only(right: 290),
                child: Placeholder(
                  color: Colors.red,
                ),
              ),
              
              if (assetImage != null)
              Padding(
                padding: const EdgeInsets.only(right: 290),
                child: Image.asset('$assetImage'),
              )

              
            ],
          )
          
        ],
      ),
    );
  }
}