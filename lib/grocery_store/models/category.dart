import 'package:flutter/material.dart';

class Category {
  final String title;
  final String icon;
  final Color color;

  Category({
    required this.title,
    required this.icon,
    required this.color,
  });
}

List<Category> categories = [
  Category(
    title: 'Fruits',
    icon: '🍎',
    color: Colors.red[200]!,
  ),
  Category(
    title: 'Vegetables',
    icon: '🥬',
    color: Colors.green[200]!,
  ),
  Category(
    title: 'Beverages',
    icon: '🥤',
    color: Colors.yellow,
  ),
  Category(
    title: 'Fish',
    icon: '🐟',
    color: Colors.blue[200]!,
  ),
  Category(
    title: 'Meat',
    icon: '🥩',
    color: Colors.deepPurple[200]!,
  ),
  Category(
    title: 'Milk',
    icon: '🥛',
    color: Colors.red[200]!,
  ),
];
