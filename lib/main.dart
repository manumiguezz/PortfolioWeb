import 'package:flutter/material.dart';
import 'package:portfolio_web_version/screens/home.dart';
import 'package:portfolio_web_version/widgets/app_readiness_gate.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const AppReadinessGate(
        child: HomeScreen(),
      ),
    );
  }
}

// "flutter build web --no-tree-shake-icons" for "firebase deploy"
