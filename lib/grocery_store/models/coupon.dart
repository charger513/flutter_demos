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
    imageUrl: 'https://food.unl.edu/newsletters/images/tomatoes.png',
  ),
  Coupon(
    text: '50% OFF',
    imageUrl:
        'https://www.tta.eu/bluecms/uploads/ckeditor_files/images/soft-fruits.jpg',
  ),
  Coupon(
    text: '10% OFF',
    imageUrl:
        'https://www.eatthis.com/wp-content/uploads/sites/4//media/images/ext/769504118/apples-best-fruit-weight-loss.jpg?quality=82&strip=1&resize=640%2C360',
  ),
];
