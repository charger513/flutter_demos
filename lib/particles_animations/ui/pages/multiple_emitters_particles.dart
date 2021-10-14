import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portafolio/particles_animations/models/emitter.dart';
import 'package:flutter_portafolio/particles_animations/models/particle.dart';

class MultipleEmittersParticles extends StatefulWidget {
  const MultipleEmittersParticles({Key? key}) : super(key: key);

  @override
  State<MultipleEmittersParticles> createState() =>
      _MultipleEmittersParticlesState();
}

class _MultipleEmittersParticlesState extends State<MultipleEmittersParticles>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  final List<Emitter> emitters = [];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animationController.repeat();
  }

  @override
  void dispose() {
    emitters.clear();
    _animationController.dispose();
    super.dispose();
  }

  void createEmitter(Offset position) {
    emitters.add(
      Emitter(
        position: position,
        particles: List.generate(
          100,
          (index) {
            final radius = 1 + Random().nextDouble() * 10;
            Offset speed = Offset.fromDirection(
                    Random().nextDouble() * 2 * pi, Random().nextDouble()) *
                10;
            speed = speed * 2;
            final color =
                Colors.primaries[Random().nextInt(Colors.primaries.length)];

            final particle = Particle(
              radius: radius,
              location: position,
              speed: speed,
              color: color,
              lifetime: 255,
            );

            return particle;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GestureDetector(
          onTapUp: (details) {
            createEmitter(details.localPosition);
          },
          child: AnimatedBuilder(
              animation: _animationController,
              builder: (_, index) {
                return CustomPaint(
                  painter: ParticlesEmittersPainter(
                    emitters: emitters,
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class ParticlesEmittersPainter extends CustomPainter {
  final List<Emitter> emitters;

  ParticlesEmittersPainter({required this.emitters});

  @override
  void paint(Canvas canvas, Size size) {
    for (var emitter in emitters) {
      emitter.update();
      // emitter.edges(size);
      emitter.draw(canvas);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
