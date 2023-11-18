import 'package:flutter/material.dart';
import 'package:portfolio_web_version/screens/background.dart';
import 'package:portfolio_web_version/screens/foreground.dart';

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

    
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 18, 18),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Background(),
            ForegroundWeb(),
          ],
        )
      ),
    );
  }
}
