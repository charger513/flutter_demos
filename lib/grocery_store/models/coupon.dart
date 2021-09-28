class Coupon {
  final String text;
  final String imageUrl;

  Coupon({
    required this.text,
    required this.imageUrl,
  });
}

List<Coupon> cupons = [
  Coupon(
    text: '20% OFF',
    imageUrl: 'assets/grocery_store/tomatoes.png',
  ),
  Coupon(
    text: '50% OFF',
    imageUrl: 'assets/grocery_store/soft-fruits.jpeg',
  ),
  Coupon(
    text: '10% OFF',
    imageUrl: 'assets/grocery_store/apples.jpeg',
  ),
];
