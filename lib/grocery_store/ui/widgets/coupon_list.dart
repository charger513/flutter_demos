import 'package:flutter/material.dart';
import 'package:flutter_portafolio/grocery_store/models/coupon.dart';
import 'package:flutter_portafolio/grocery_store/ui/widgets/coupon_list_item.dart';

class CouponList extends StatelessWidget {
  const CouponList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.9),
        itemCount: cupons.length,
        itemBuilder: (context, index) {
          return CouponListItem(cupon: cupons[index]);
        },
      ),
    );
  }
}
