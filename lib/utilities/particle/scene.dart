import 'package:flutter/material.dart';
import '../../exports/utils.dart';


class Scene extends StatefulWidget {
  final Size _size;
  final Configuration _configuration;

  const Scene(this._size, this._configuration, {super.key});

  @override
  SceneState createState() => SceneState();
}

class SceneState extends State<Scene> with SingleTickerProviderStateMixin {
  ParticleHandler? _particleBackgroundHandler;

  @override
  void initState() {
    createTicker(_tick).start();
    _particleBackgroundHandler = ParticleBackgroundHandler(widget._size, widget._configuration);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1500),
      curve: Curves.easeOut,
      child: ClipRect(
        child: Stack(
          children: <Widget>[
            CustomPaint(
              painter: ParticlePainter(particleHandler: _particleBackgroundHandler!),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }

  void _tick(Duration duration) {
    setState(() {
      _particleBackgroundHandler!.tick();
    });
  }
}
