import 'package:flutter/material.dart';
import 'package:flutter_portafolio/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demos',
      home: HomePage(),
    );
  }
}
