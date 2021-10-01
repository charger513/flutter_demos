import 'package:flutter/material.dart';

class PageViewCenterScalePage extends StatefulWidget {
  const PageViewCenterScalePage({Key? key}) : super(key: key);

  @override
  State<PageViewCenterScalePage> createState() =>
      _PageViewCenterScalePageState();
}

class _PageViewCenterScalePageState extends State<PageViewCenterScalePage> {
  final _pageController = PageController(viewportFraction: 0.8);
  final colors = Colors.primaries;
  double currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: colors.length,
        itemBuilder: (_, index) {
          // final temp = max(1, (1.1 - (index - currentPage).abs())).toDouble();
          var resizeFactor =
              (1 - (((currentPage - index).abs() * 0.1).clamp(0.0, 1.0)));
          return Padding(
            padding: const EdgeInsets.symmetric(
              // horizontal: 10.0,
              vertical: 200,
            ),
            child: Transform.scale(
              scale: resizeFactor,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(color: colors[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
