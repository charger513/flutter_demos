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
  late final Animation<int> tween;

  final words = [
    'Perro',
    'Gato',
    'Pájaro',
    'Avión',
    'Computadora',
    'Televisión',
    'Videojuego',
    'Agua',
    'Aire',
    'Fuego',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    tween = IntTween(begin: 0, end: 25).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    // _controller.addListener(() {
    //   debugPrint(_controller.value.toString());
    //   setState(() {
    //     getRandomNumber(_controller.value);
    //   });
    // });

    tween.addListener(() {
      // debugPrint(words[randomNumber]);
      // debugPrint(randomNumber.toString());
      // debugPrint(tween.value.toString());
      getRandomNumberInt(tween.value);
      if (tween.isCompleted) {
        setState(() {
          debugPrint('completed');
          randomNumber = Random().nextInt(10);
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
      randomNumber = Random().nextInt(10);
    }
  }

  void getRandomNumberInt(int animationValue) {
    currentAnimationNumber = animationValue;
    if (currentAnimationNumber != lastAnimationNumber) {
      lastAnimationNumber = currentAnimationNumber;
      // if (animationValue % 2 == 0) {
      setState(() {
        randomNumber = Random().nextInt(10);
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
            // Text(
            //   'Number',
            //   style: Theme.of(context).textTheme.headlineLarge,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 50),
                transitionBuilder: (child, animation) {
                  final position = Tween<Offset>(
                          begin: animation.status == AnimationStatus.completed
                              ? const Offset(0, -1)
                              : const Offset(0, 1),
                          end: Offset.zero)
                      .animate(animation);
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: position,
                      child: child,
                    ),
                  );
                },
                child: FittedBox(
                  key: ValueKey(randomNumber * tween.value),
                  child: Text(
                    words[randomNumber],
                    key: ValueKey(randomNumber * tween.value),
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
