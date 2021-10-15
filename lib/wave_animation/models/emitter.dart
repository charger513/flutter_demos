import 'dart:ui';

import 'package:flutter_portafolio/wave_animation/models/drawable.dart';
import 'package:flutter_portafolio/wave_animation/models/particle.dart';

class Emitter implements Drawable {
  Offset position;
  List<Particle> bubbles;

  Emitter({
    this.position = Offset.zero,
    this.bubbles = const [],
  });

  void update() {
    for (var i = bubbles.length - 1; i >= 0; i--) {
      final bubble = bubbles[i];
      bubble.update();
      if (bubble.lifetime <= 0) {
        bubbles.removeAt(i);
      }
    }
  }

  @override
  void draw(Canvas canvas) {
    for (var i = bubbles.length - 1; i >= 0; i--) {
      final bubble = bubbles[i];
      bubble.draw(canvas);
    }
  }
}
