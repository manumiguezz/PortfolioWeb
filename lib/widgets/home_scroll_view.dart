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

        // SliverPersistentHeader(
        //   pinned: true,
        //   delegate: CustomSliverAppBarDelegate(
        //     minHeight: 50, 
        //     maxHeight: 400, 
        //     child: const FlexibleSpaceBar(
        //       centerTitle: true,
        //       title: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           Text('Manuel Miguez Lauría',
        //           style: TextStyle(fontFamily: 'madetommy', fontSize: 50),),
        //         ],
        //       ),
        //     )
        //   )
        // ),
        
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
                Text('Deserunt cillum dolore veniam ipsum eiusmod velit nulla. Cillum qui reprehenderit mollit exercitation tempor magna adipisicing eiusmod excepteur quis mollit eiusmod et veniam. Laboris qui deserunt et cupidatat enim ex ex velit tempor dolore deserunt qui. Id sit nisi laboris est elit mollit deserunt ex labore labore sunt. Anim laboris aliquip dolor sit et in.')
              ],
            );
          })
        )
      
        
      ],
    );
  }
}