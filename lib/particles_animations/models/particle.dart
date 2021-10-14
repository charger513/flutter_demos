import 'package:flutter/material.dart';
import 'package:flutter_portafolio/particles_animations/models/drawable.dart';
import 'package:flutter_portafolio/particles_animations/models/edges.dart';

class Particle extends Drawable implements Edges {
  final double radius;
  Offset speed;
  Offset location;
  Offset acceleration;
  final Color color;
  double lifetime;

  Particle({
    required this.radius,
    this.speed = Offset.zero,
    this.location = Offset.zero,
    this.acceleration = Offset.zero,
    required this.color,
    this.lifetime = 255,
  });

  void applyForce(Offset force) {
    acceleration = acceleration + force;
  }

  void move() {
    speed += acceleration;
    acceleration = Offset.zero;

    location += speed;
    lifetime -= 1;
  }

  @override
  void draw(Canvas canvas) {
    if (lifetime > 0) {
      canvas.drawCircle(
        location,
        radius * lifetime / 255,
        Paint()..color = color.withAlpha(lifetime.toInt()),
      );
    }
    speed *= 0.99;
  }

  @override
  void edges(Size size) {
    if (location.dx >= size.width - radius || location.dx <= radius) {
      speed = Offset(speed.dx * -1, speed.dy);
    } else if (location.dy >= size.height - radius || location.dy <= radius) {
      speed = Offset(speed.dx, speed.dy * -1);
    }
  }
}
