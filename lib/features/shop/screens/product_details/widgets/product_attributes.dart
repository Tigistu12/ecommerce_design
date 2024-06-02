import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/chips/choice_chip.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:my_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        // -- Selected attributes pricing & description
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark? TColors.darkerGrey:TColors.grey,
          child: Column(
            children: [
              // Title, price and stock status
              Row(
                children: [
                  TSectionHeading(title: 'Variation',showActionButton: false),
                  SizedBox(width: TSizes.spaceBtwItems),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                    children: [
                       TProductTitleText(title: 'price :',smallSize: true),
                     
                      // Actual Price
                      Text('\$25',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(width: TSizes.spaceBtwItems),

                  //Sale price
                  TProductPriceText(price: '20'),
                    ],
                  ),
                  //stock
                  Row(
                    children: [
                      TProductTitleText(title: 'Stock',smallSize: true),
                      SizedBox(width: TSizes.spaceBtwItems),
                      Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                  ],
                  ),
                ],
              ),

              //variation Description
              TProductTitleText(
                title: 'This is the description of the product and it can go upto max 4 lines.',
                smallSize: true,
                maxLines: 4,
                ),
            ],
          ),
        ),
  SizedBox(height: TSizes.spaceBtwItems),
  // --Attributes
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TSectionHeading(title: 'Colors',showActionButton: false),
      SizedBox(height: TSizes.spaceBtwItems /2),
      Wrap(
        spacing: 8,
        children: [
          TChoiceChip(text: 'Green',selected: false, onSelected: (value){},),
           TChoiceChip(text: 'Blue',selected: true, onSelected: (value){},),
            TChoiceChip(text: 'Yellow',selected: false, onSelected: (value){},),
      
        ],
      ),
    ],
  ),
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TSectionHeading(title: 'Size'),
      SizedBox(height: TSizes.spaceBtwItems /2),
      Wrap(
        spacing: 8,
        children: [
          TChoiceChip(text: 'EU 34',selected: true, onSelected: (value){},),
          TChoiceChip(text: 'EU 36',selected: false, onSelected: (value){},),
          TChoiceChip(text: 'EU 38',selected: false, onSelected: (value){},),
          

        ],
      )
    ],
  ),
      ],
    );
  }
}

