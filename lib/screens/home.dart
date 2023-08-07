import 'package:flutter/material.dart';
import 'package:personal_web/screens/background.dart';
import 'package:personal_web/screens/foreground.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';


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

    // final double pageHeight = MediaQuery.of(context).size.height; 
    // final double pageWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,

      body: Scrollbar(
        child: WebSmoothScroll(
          controller: scrollController, 
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            controller: scrollController, 
            child: const Stack(
              children: [
                Background(),
                Foreground(),
              ],
            )
          ),
        ),
      ),
    );
  }
}




