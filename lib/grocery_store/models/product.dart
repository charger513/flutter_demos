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
    imageUrl:
        'https://i5.walmartimages.com/asr/1677a933-d860-4e5b-9846-01d3b55eb90d.d13ac46bf33dc8dc28f66e78cf6db41c.jpeg',
  ),
  Product(
    title: 'HERSHEY\'S Milk Chocolate Candy',
    description:
        'HERSHEY\'S Milk Chocolate Candy, Individually Wrapped, 1.55 oz, Bars (6 Count)',
    price: 3.48,
    imageUrl:
        'https://i5.walmartimages.com/asr/b4cfaf16-2f9d-40b0-8bbf-8bd890af6dc2.769e8d678cae31edc988fda216638b05.jpeg',
  ),
  Product(
    title: 'Heinz Simply Tomato Ketchup',
    description:
        'Heinz Simply Tomato Ketchup with No Artificial Sweeteners, 31 oz Bottle',
    price: 3.28,
    imageUrl:
        'https://i5.walmartimages.com/asr/04ae3236-95c2-41d9-bdbc-d63f59ad6780.3d088fc8feae0297ce448d169dfed3fd.jpeg',
  ),
  Product(
    title: 'Worcestershire Sauce',
    description:
        'Lea & Perrins The Original Worcestershire Sauce, 15 fl oz Bottle',
    price: 4.48,
    imageUrl:
        'https://i5.walmartimages.com/asr/8e2b3c49-ad55-493a-80f2-81517fdd9dfc.f6f9b323fc149be3755b0f1f3ce8356a.jpeg',
  ),
  Product(
    title: 'SKIPPY',
    description: 'SKIPPY Natural Creamy Peanut Butter Spread, 40 oz',
    price: 5.58,
    imageUrl:
        'https://i5.walmartimages.com/asr/a25c552f-6e22-46de-a2ac-2e181a1b6ebb.5010c8292c1119d033c37aca95dd1cba.jpeg',
  ),
  Product(
    title: 'Smucker\'s Peach Preserves',
    description: 'Smucker\'s Peach Preserves, 18-Ounce',
    price: 2.84,
    imageUrl:
        'https://i5.walmartimages.com/asr/720886ec-7662-4359-9432-3e1c3b924b5e_1.d6226ab8e1a97bc801b4227a48ae75d0.jpeg',
  ),
];
