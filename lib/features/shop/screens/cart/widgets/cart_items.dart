import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/products/cart/add_remove_button.dart';
import 'package:my_ecommerce_app/common/widgets/products/cart/cart_item.dart';
import 'package:my_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key,  
  this.showAddRemoveButtons = true,
  });


 final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          shrinkWrap: true,
          itemCount: 2,
           separatorBuilder: (_, __) =>SizedBox(height: TSizes.spaceBtwSections),
            itemBuilder: (_, index) => Column(
              children: [
                //cart item
                TCartItem(),
                if(showAddRemoveButtons) SizedBox(height: TSizes.spaceBtwItems),
                // add remove button row with total price
                if(showAddRemoveButtons) 
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //Extra space
                        SizedBox(width: 70),
                        // add  remove button
                    TProductQuantityWithAddRemoveButton(),
                      ],
                    ),
                    //product total price
                   TProductPriceText(price: '256'),
                  ],
                ),
              ],
            ),
            );
  }
}