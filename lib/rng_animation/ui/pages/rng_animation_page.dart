import 'dart:math';

import 'package:flutter/material.dart';

class RngAnimationPage extends StatefulWidget {
  const RngAnimationPage({super.key});

  @override
  State<RngAnimationPage> createState() => _RngAnimationPageState();
}

class _RngAnimationPageState extends State<RngAnimationPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  int randomNumber = 0;
  int lastAnimationNumber = 0;
  int currentAnimationNumber = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    final tween = IntTween(begin: 0, end: 25).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    // _controller.addListener(() {
    //   debugPrint(_controller.value.toString());
    //   setState(() {
    //     getRandomNumber(_controller.value);
    //   });
    // });

    tween.addListener(() {
      debugPrint(tween.value.toString());
      getRandomNumberInt(tween.value);
      if (tween.isCompleted) {
        setState(() {
          debugPrint('completed');
          randomNumber = Random().nextInt(100);
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void getRandomNumber(double animationValue) {
    if ((animationValue * 100).round() % 5 == 0) {
      randomNumber = Random().nextInt(100);
    }
  }

  void getRandomNumberInt(int animationValue) {
    currentAnimationNumber = animationValue;
    if (currentAnimationNumber != lastAnimationNumber) {
      lastAnimationNumber = currentAnimationNumber;
      // if (animationValue % 2 == 0) {
      setState(() {
        randomNumber = Random().nextInt(100);
      });
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.forward(from: 0);
        },
        child: const Icon(Icons.refresh),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Number',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              randomNumber.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
    );
  }
}
