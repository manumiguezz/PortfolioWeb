import 'package:flutter/scheduler.dart';
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
  late final Ticker _ticker;

  @override
  void initState() {
    super.initState();
    _particleBackgroundHandler =
        ParticleBackgroundHandler(widget._size, widget._configuration);
    _ticker = createTicker(_tick)..start();
  }

  @override
  void didUpdateWidget(covariant Scene oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget._size != widget._size ||
        oldWidget._configuration != widget._configuration) {
      _particleBackgroundHandler =
          ParticleBackgroundHandler(widget._size, widget._configuration);
    }
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
              painter:
                  ParticlePainter(particleHandler: _particleBackgroundHandler!),
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }

  void _tick(Duration duration) {
    if (!mounted || MediaQuery.maybeOf(context)?.disableAnimations == true) {
      return;
    }

    _particleBackgroundHandler?.tick();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
}
