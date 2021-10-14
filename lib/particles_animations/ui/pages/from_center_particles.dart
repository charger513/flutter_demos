import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portafolio/particles_animations/models/particle.dart';

class FromCenterParticles extends StatefulWidget {
  const FromCenterParticles({
    Key? key,
  }) : super(key: key);

  @override
  State<FromCenterParticles> createState() => _FromCenterParticlesState();
}

class _FromCenterParticlesState extends State<FromCenterParticles>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  List<Particle> particles = List.generate(100, (index) {
    final radius = 1 + Random().nextDouble() * 10;
    Offset speed = Offset.fromDirection(
            Random().nextDouble() * 2 * pi, Random().nextDouble()) *
        10;
    //     Offset(
    //   -1 + (Random().nextDouble() * 2),
    //   -1 + (Random().nextDouble() * 2),
    // );
    speed = speed * 2;
    final color = Colors.primaries[Random().nextInt(Colors.primaries.length)];

    final particle = Particle(
      radius: radius,
      speed: speed,
      color: color,
      lifetime: 255,
    );

    return particle;
  });

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, _) {
              return CustomPaint(
                painter: ParticlesPainter(
                  particles: particles,
                  animation: _animationController,
                ),
              );
            }),
      ),
    );
  }
}

class ParticlesPainter extends CustomPainter {
  final List<Particle> particles;
  final AnimationController animation;
  final gravity = const Offset(0, 0.02);

  ParticlesPainter({
    required this.particles,
    required this.animation,
  }) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < particles.length; i++) {
      final particle = particles[i];
      if (particle.location == Offset.zero) {
        particle.location = Offset(
          size.width / 2,
          size.height / 2,
        );
      }
      particle.applyForce(gravity);
      particle.move();
      particle.edges(size);
      particle.draw(canvas);
    }

    for (var i = particles.length - 1; i >= 0; i--) {
      final particle = particles[i];

      if (particle.lifetime <= 0) {
        particles.removeAt(i);
      }
    }

    // createParticle();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

  void createParticle() {
    final radius = 1 + Random().nextDouble() * 10;
    final speed = Offset(
      -1 + (Random().nextDouble() * 2),
      -1 + (Random().nextDouble() * 2),
    );
    final color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    particles.add(
      Particle(
          radius: radius,
          speed: speed,
          color: color,
          lifetime: Random().nextInt(100) * 1.0),
    );
  }
}
