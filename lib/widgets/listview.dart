import 'package:flutter/material.dart';
import 'package:personal_web/widgets/parallax.dart';

class PageListView extends StatelessWidget {
  const PageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        
        const SliverToBoxAdapter(
          child: Parallax(),
        ),

        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              height: 9000,
              color: Colors.black,
            )
          ])
        )
      ],
    );
  }
}