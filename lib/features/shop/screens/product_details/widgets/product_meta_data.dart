import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:my_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:my_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:my_ecommerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/enums.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
//import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
    });

  @override
  Widget build(BuildContext context) {
    //final darkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price & sale price
        Row(
          children: [
            //Sale Tag
            TRoundedContainer(
                radius: TSizes.sm,
                backgroundColor: TColors.Secondary.withOpacity(0.8),
                 padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                 child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                    SizedBox(width: TSizes.spaceBtwItems),

            // price
            Text('\$250',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            SizedBox(width: TSizes.spaceBtwItems),
            TProductPriceText(price: '175',isLarge: true,),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Title
        TProductTitleText(title: 'Green Nike Sports shirt'),
        SizedBox(height: TSizes.spaceBtwItems/1.5),


        //Stock Status
        Row(
          children: [
            TProductTitleText(title: 'Status'),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        
        SizedBox(height: TSizes.spaceBtwItems/1.5),

        // Brand
        Row(
          children: [
            TCircularImage(image: TImages.shoeIcon,
            width: 32,
            height: 32,
            //overlayColor: darkMode? TColors.white:TColors.black,
            ),
            TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium),
          ],
        ),

      ],
    );
  }
}