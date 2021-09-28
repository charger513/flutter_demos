import 'package:flutter/material.dart';
import 'package:flutter_portafolio/grocery_store/models/category.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                category.icon,
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ),
        ),
        Text(
          category.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
