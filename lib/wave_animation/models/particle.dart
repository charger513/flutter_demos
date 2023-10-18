import 'package:flutter/material.dart';
import 'package:flutter_portafolio/particles_animations/models/drawable.dart';

class Particle implements Drawable {
  Offset position;
  Offset speed;
  Offset acceleration;
  double radius;
  Color color;
  double lifetime;
  double maxLifetime;

  Particle({
    this.position = Offset.zero,
    this.speed = Offset.zero,
    this.acceleration = Offset.zero,
    this.radius = 10,
    this.color = Colors.white,
    this.lifetime = 255,
    this.maxLifetime = 255,
  });

  void update() {
    speed = speed + acceleration;
    position = position + speed;

    // acceleration = Offset.zero;

    lifetime--;
  }

  @override
  void draw(Canvas canvas) {
    if (lifetime > 0) {
      final paint = Paint()
        ..color = Color.lerp(
            color, Colors.white.withAlpha(0), 1 - (lifetime / maxLifetime))!;
      // ..style = PaintingStyle.stroke
      // ..strokeWidth = 0.3;
      canvas.drawCircle(position, radius, paint);
    }
  }
}
