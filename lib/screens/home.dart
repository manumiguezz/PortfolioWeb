import 'package:flutter/material.dart';
import 'package:personal_web/utilities/utilities.dart';
import 'package:personal_web/widgets/widgets.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../widgets/custom_particle_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final double pageHeight = MediaQuery.of(context).size.height; 
    final double pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,

      body: Scrollbar(
        child: WebSmoothScroll(
          controller: scrollController, 
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: scrollController, 
            child: Column(
              children: [
      
                Stack(
                  children: [
                  
                    const CustomParticleBackground(),
      
                    const CustomParticleBackground(
                      backgroundColor: Colors.transparent,
                      blur: true,
                      blurIntensity: 7,
                      particleColor: Colors.white10,
                      biggestSize: 1,
                      numberOfParticles: 40,
                      highestSpeed: 1.5,
                      allFilled: true,
                      smallestSize: 70,
                    ),
      
                    // const SideVignette(),
      
                    const Presentation(),
      
                    const CustomParticleBackground(
                      backgroundColor: Colors.transparent,
                      blur: true,
                      blurIntensity: 0,
                      particleColor: Color.fromARGB(26, 42, 42, 42),
                      biggestSize: 1,
                      numberOfParticles: 10,
                      highestSpeed: 2,
                      allFilled: true,
                      smallestSize: 70,
                    ),
      
                    const CustomParticleBackground(
                      backgroundColor: Colors.transparent,
                      blur: true,
                      blurIntensity: 0,
                      particleColor: Color.fromARGB(96, 112, 112, 112),
                      biggestSize: 1,
                      numberOfParticles: 14,
                      highestSpeed: 0.7,
                      allFilled: true,
                      smallestSize: 30,
                    ),
      
                    Padding(
                      padding: const EdgeInsets.only(top: 450,),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 1300,
                            width: pageWidth,
                            child: CustomPaint(
                              painter: WhiterStrokePainter(),
                            ),
                          ),
                        ],
                      )
                      ),
      
                  ],
                ),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}

