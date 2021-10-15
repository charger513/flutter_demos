import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_portafolio/wave_animation/models/particle.dart';

class Wave extends StatefulWidget {
  final double value;
  final Color color;
  final Axis direction;

  const Wave({
    Key? key,
    required this.value,
    required this.color,
    required this.direction,
  }) : super(key: key);

  @override
  _WaveState createState() => _WaveState();
}

class _WaveState extends State<Wave> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Size size;

  final List<Particle> bubbles = [];

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animationController.repeat();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
    _animationController.addListener(() {
      if (math.Random().nextDouble() <= 0.01) {
        createBubble();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void createBubble() {
    bubbles.add(
      Particle(
        radius: 20 - math.Random().nextDouble() * 15,
        position: Offset(
          math.Random().nextDouble() * size.width,
          size.height,
        ),
        speed: Offset(0, -(4 - math.Random().nextDouble() * 2)),
        color: Colors.white.withOpacity(
          math.Random().nextDouble().clamp(0.1, 0.9),
        ),
        lifetime: 255 * widget.value,
        maxLifetime: 255 * widget.value,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
      builder: (context, child) => ClipPath(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: widget.color),
          child: CustomPaint(
            painter: BubblesPainter(bubbles: bubbles),
          ),
        ),
        clipper: _WaveClipper(
          animationValue: _animationController.value,
          value: widget.value,
          direction: widget.direction,
        ),
      ),
    );
  }
}

class _WaveClipper extends CustomClipper<Path> {
  final double animationValue;
  final double value;
  final Axis direction;
  final double waveHeightFactor = 100.0;

  _WaveClipper({
    required this.animationValue,
    required this.value,
    required this.direction,
  });

  @override
  Path getClip(Size size) {
    if (direction == Axis.horizontal) {
      Path path = Path()
        ..addPolygon(_generateHorizontalWavePath(size), false)
        ..lineTo(0.0, size.height)
        ..lineTo(0.0, 0.0)
        ..close();
      return path;
    }

    Path path = Path()
      ..addPolygon(_generateVerticalWavePath(size), false)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, size.height)
      ..close();
    return path;
  }

  List<Offset> _generateHorizontalWavePath(Size size) {
    final waveList = <Offset>[];
    for (int i = -2; i <= size.height.toInt() + 2; i++) {
      final waveHeight = (size.width / 50);
      final dx = math.sin((animationValue * 360 - i) % 360 * (math.pi / 180)) *
              waveHeight +
          (size.width * value);
      waveList.add(Offset(dx, i.toDouble()));
    }
    return waveList;
  }

  List<Offset> _generateVerticalWavePath(Size size) {
    final waveList = <Offset>[];
    for (int i = -2; i <= size.width.toInt() + 2; i++) {
      final waveHeight = (size.height / waveHeightFactor);
      final dy = math.sin((animationValue * 360 - i) % 360 * (math.pi / 180)) *
              waveHeight +
          (size.height - (size.height * value));
      waveList.add(Offset(i.toDouble(), dy));
    }
    return waveList;
  }

  @override
  bool shouldReclip(_WaveClipper oldClipper) =>
      animationValue != oldClipper.animationValue;
}

class BubblesPainter extends CustomPainter {
  final List<Particle> bubbles;

  BubblesPainter({required this.bubbles});

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = bubbles.length - 1; i >= 0; i--) {
      final bubble = bubbles[i];
      bubble.update();
      bubble.draw(canvas);
      if (bubble.lifetime <= 0) {
        bubbles.removeAt(i);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return bubbles.isNotEmpty;
  }
}
