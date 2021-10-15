import 'package:flutter/material.dart';

import 'wave.dart';

class AnimatedWave extends StatefulWidget {
  const AnimatedWave({
    Key? key,
    required this.value,
  }) : super(key: key);

  final double value;

  @override
  _AnimatedWaveState createState() => _AnimatedWaveState();
}

class _AnimatedWaveState extends State<AnimatedWave> {
  late double lastValue;
  late double currentValue;

  @override
  void initState() {
    super.initState();
    lastValue = 0;
    currentValue = widget.value;
  }

  @override
  void didUpdateWidget(covariant AnimatedWave oldWidget) {
    lastValue = oldWidget.value;
    currentValue = widget.value;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 500),
      tween: Tween<double>(begin: lastValue, end: currentValue),
      builder: (ctx, value, _) => Wave(
        value: value,
        color: Theme.of(context).colorScheme.secondary,
        direction: Axis.vertical,
      ),
    );
  }
}
