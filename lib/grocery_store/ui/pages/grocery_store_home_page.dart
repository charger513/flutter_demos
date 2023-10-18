import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_portafolio/grocery_store/ui/widgets/category_list.dart';
import 'package:flutter_portafolio/grocery_store/ui/widgets/coupon_list.dart';
import 'package:flutter_portafolio/grocery_store/ui/widgets/featured_products_list.dart';
import 'package:flutter_portafolio/grocery_store/ui/widgets/search_bar.dart';
import 'package:flutter_portafolio/grocery_store/ui/widgets/top_app_bar.dart';

class GroceryStoreHomePage extends StatelessWidget {
  const GroceryStoreHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              TopAppBar(),
              SizedBox(height: 20),
              SearchBar(),
              SizedBox(height: 20),
              CouponList(),
              SizedBox(height: 40),
              CategoryList(),
              SizedBox(height: 40),
              FeaturedProductsList()
            ],
          ),
        ),
      ),
    );
  }
}
