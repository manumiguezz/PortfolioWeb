import 'package:flutter/material.dart';
import 'package:portfolio_web_version/screens/background.dart';
import 'package:portfolio_web_version/screens/foreground.dart';
import 'package:portfolio_web_version/widgets/portfolio_page_reveal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController scrollController;
  bool _isScrollEnabled = false;

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

  void _handlePageRevealComplete() {
    if (!mounted || _isScrollEnabled) {
      return;
    }

    setState(() {
      _isScrollEnabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
      body: SingleChildScrollView(
        controller: scrollController,
        physics: _isScrollEnabled
            ? const ClampingScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        child: PortfolioPageReveal(
          onRevealComplete: _handlePageRevealComplete,
          child: const Stack(
            children: [
              Background(),
              Foreground(),
            ],
          ),
        ),
      ),
    );
  }
}
