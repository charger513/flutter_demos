import 'package:flutter/material.dart';
import 'package:flutter_portafolio/particles_animations/models/drawable.dart';
import 'package:flutter_portafolio/particles_animations/models/edges.dart';
import 'package:flutter_portafolio/particles_animations/models/particle.dart';

class Emitter extends Drawable implements Edges {
  final Offset position;
  final List<Particle> particles;

  Emitter({
    required this.position,
    required this.particles,
  });

  void update() {
    for (var i = particles.length - 1; i >= 0; i--) {
      particles[i].move();
      if (particles[i].lifetime <= 0) {
        particles.removeAt(i);
      }
    }
  }

  @override
  void draw(Canvas canvas) {
    for (var i = particles.length - 1; i >= 0; i--) {
      particles[i].draw(canvas);
    }
  }

  @override
  void edges(Size size) {
    for (var i = particles.length - 1; i >= 0; i--) {
      particles[i].edges(size);
    }
  }
}
