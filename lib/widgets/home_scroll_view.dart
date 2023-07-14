import 'package:flutter/material.dart';
import 'package:personal_web/widgets/widgets.dart';

class HomeScrollView extends StatelessWidget {
  const HomeScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        
        const SliverAppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          pinned: true,
          elevation: 5,
          expandedHeight: 760,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text('Manuel Miguez Lauría',
                style: TextStyle(fontFamily: 'madetommy', fontSize: 50),
                ),

                Icon(Icons.gite_outlined, color: Colors.white,)
              ],
            ),
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return const Column(
              children: [
                
              ],
            );
          })
        )
      
        
      ],
    );
  }
}