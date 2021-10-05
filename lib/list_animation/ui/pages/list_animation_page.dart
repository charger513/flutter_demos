import 'dart:ui';

import 'package:flutter/material.dart';

class ListAnimationPage extends StatefulWidget {
  const ListAnimationPage({Key? key}) : super(key: key);

  @override
  State<ListAnimationPage> createState() => _ListAnimationPageState();
}

class _ListAnimationPageState extends State<ListAnimationPage> {
  final colors = Colors.primaries;
  final _scrollController = ScrollController();
  double _scrollOffset = 0.0;
  double heightFactor = 0.7;
  double containerHeight = 170;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                // print(_scrollOffset);
                final itemPos = index * containerHeight * heightFactor;
                final difference = _scrollOffset - itemPos;
                final double percentage = 1 -
                    (difference / (containerHeight * heightFactor)).clamp(0, 1);

                return Transform.translate(
                  offset: Offset(0, (1 - percentage) * 80),
                  child: Transform.scale(
                    scale: lerpDouble(0.8, 1, percentage) ?? 1, //percentage,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Align(
                        heightFactor: heightFactor,
                        child: Opacity(
                          opacity: percentage,
                          child: Container(
                            decoration: BoxDecoration(
                              color: colors[index],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 10.0,
                                  offset: Offset(0.0, 0.75),
                                )
                              ],
                            ),
                            height: containerHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
