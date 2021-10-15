import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_portafolio/wave_animation/ui/widgets/animated_wave.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class WaveAnimationPage extends StatefulWidget {
  @override
  State<WaveAnimationPage> createState() => _WaveAnimationPageState();
}

class _WaveAnimationPageState extends State<WaveAnimationPage> {
  double value = 0.5;
  double sliderLeft = -100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedWave(value: value),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: 0,
            bottom: 0,
            left: sliderLeft,
            child: SafeArea(
              child: SfSlider.vertical(
                  value: value * 100,
                  min: 0,
                  max: 100,
                  stepSize: 10,
                  activeColor: Colors.black,
                  showDividers: true,
                  showTicks: true,
                  showLabels: true,
                  interval: 10,
                  onChanged: (value) {
                    setState(() {
                      this.value = value / 100;
                    });
                  }),
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: GestureDetector(
              onHorizontalDragEnd: (details) {
                // print(details.velocity);
                setState(() {
                  if (details.velocity.pixelsPerSecond.dx > 0) {
                    sliderLeft = 0;
                  } else if (details.velocity.pixelsPerSecond.dx < 0) {
                    sliderLeft = -100;
                  }
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
