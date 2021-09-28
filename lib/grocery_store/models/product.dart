class Product {
  final String title;
  final double price;
  final String description;
  final String imageUrl;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

List<Product> featured = [
  Product(
    title: 'Beef Choice Angus',
    description: 'Beef Choice Angus New York Strip Steak',
    price: 20.10,
    imageUrl: 'assets/grocery_store/meat.jpeg',
  ),
  Product(
    title: 'HERSHEY\'S Milk Chocolate Candy',
    description:
        'HERSHEY\'S Milk Chocolate Candy, Individually Wrapped, 1.55 oz, Bars (6 Count)',
    price: 3.48,
    imageUrl: 'assets/grocery_store/chocolate.jpeg',
  ),
  Product(
    title: 'Heinz Simply Tomato Ketchup',
    description:
        'Heinz Simply Tomato Ketchup with No Artificial Sweeteners, 31 oz Bottle',
    price: 3.28,
    imageUrl: 'assets/grocery_store/ketchup.jpeg',
  ),
  Product(
    title: 'Worcestershire Sauce',
    description:
        'Lea & Perrins The Original Worcestershire Sauce, 15 fl oz Bottle',
    price: 4.48,
    imageUrl: 'assets/grocery_store/sauce.jpeg',
  ),
  Product(
    title: 'SKIPPY',
    description: 'SKIPPY Natural Creamy Peanut Butter Spread, 40 oz',
    price: 5.58,
    imageUrl: 'assets/grocery_store/peanut_butter.jpeg',
  ),
  Product(
    title: 'Smucker\'s Peach Preserves',
    description: 'Smucker\'s Peach Preserves, 18-Ounce',
    price: 2.84,
    imageUrl: 'assets/grocery_store/smuckers.jpeg',
  ),
];
