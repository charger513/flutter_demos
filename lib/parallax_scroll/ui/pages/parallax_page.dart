import 'package:flutter/material.dart';
import 'package:flutter_portafolio/parallax_scroll/models/place.dart';
import 'package:flutter_portafolio/parallax_scroll/ui/widgets/place_item.dart';

class ParallaxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ...places.map((place) => PlaceItem(place: place)).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
