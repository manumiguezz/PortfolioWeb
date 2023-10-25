import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio_web_version/screens/home.dart';
import 'package:portfolio_web_version/widgets/precache_assets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    precacheAssets(context);

    print('WIDTH: ' + MediaQuery.of(context).size.width.toString() + '--------- HEIGHT: '+ MediaQuery.of(context).size.height.toString() + ' ______________________________________________________________________!!!!!!!!!!!!');
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    ).animate().fadeIn();

  }
}

// "flutter build web --no-tree-shake-icons" for "firebase deploy"