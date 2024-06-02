import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/features/shop/screens/order/widgets/ordet_list.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: TAppBar(title: Text('My Orders',style: Theme.of(context).textTheme.headlineSmall),showBackArrow: true,),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // orders
        child: TOrderListItems(),
      ),
    );
  }
}