import 'package:flutter/material.dart';
import 'package:flutter_portafolio/grocery_store/models/product.dart';
import 'package:flutter_portafolio/grocery_store/ui/widgets/featured_products_list_item.dart';

class FeaturedProductsList extends StatelessWidget {
  const FeaturedProductsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Featured Products',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featured.length,
            itemBuilder: (context, index) {
              return FeaturedProductsListItem(product: featured[index]);
            },
          ),
        ),
      ],
    );
  }
}
