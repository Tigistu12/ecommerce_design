import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$256.0',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems /2),
        // Shipping Fee
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
         SizedBox(height: TSizes.spaceBtwItems /2),
         //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
          SizedBox(height: TSizes.spaceBtwItems /2),
         //Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total',style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        
      ],
    );
  }
}