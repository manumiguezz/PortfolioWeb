import 'package:flutter/material.dart';
import 'package:personal_web/widgets/top_page.dart';
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
    return Scaffold(
      backgroundColor: Colors.black,

      body: WebSmoothScroll(
        controller: scrollController, 
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          controller: scrollController, 
          child: Column(
            children: [

              // TopPage(),

              Stack(
                children: [
                
                  CustomParticleBackground(),

                  SideVignette(),

                  Presentation(),

                  Padding(
                    padding: const EdgeInsets.only(top: 600),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/white_stroke_two.png')
                      ],
                    ),
                  )

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}

