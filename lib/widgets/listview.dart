import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

class PageListView extends StatelessWidget {
  const PageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Parallax(),

        Container(
          color: Colors.black,
          height: 400,
        )
      ],
    );
  }
}