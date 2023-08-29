import 'package:flutter/material.dart';
import 'package:portfolio_web_version/screens/background.dart';
import 'package:portfolio_web_version/screens/foreground.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
      body: WebSmoothScroll(
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
    );
  }
}
