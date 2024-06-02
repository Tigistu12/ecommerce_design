import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:my_ecommerce_app/features/shop/screens/checkout/checkout.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(showBackArrow: true, title: Text('Cart',style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        // items in cart
        child: TCartItems(),
      ),
      //check out button
    bottomNavigationBar: Padding(
      padding:  EdgeInsets.all(TSizes.defaultSpace),
      child: ElevatedButton(onPressed: () => Get.to(() => CheckoutScreen()), child: Text('Checkout\$256.0')),
    ),
    );
  }
}


