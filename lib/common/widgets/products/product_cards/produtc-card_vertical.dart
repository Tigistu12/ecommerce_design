import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/styles/shadows.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:my_ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:my_ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:my_ecommerce_app/common/widgets/texts/product_title_text.dart';
import 'package:my_ecommerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:my_ecommerce_app/features/shop/screens/product_details/product_detail.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // container with side padding, color, edges radius and shadow
    return GestureDetector(
      onTap: ()=> Get.to(()=> ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color:  dark? TColors.darkerGrey:TColors.white,
        ),
      
        child: Column(
          children: [
            //thumbnail, wishlist button,discount tag
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),  
              backgroundColor: dark? TColors.dark:TColors.light,
              child: Stack(
                children: [
                  //thumbnail image
                    TRoundedImage(
                    imageUrl: TImages.productImage1, applyImageRadius:true,
                     width: 180-  TSizes.sm *2,  // Adjust width to fit within container padding
                    height: 180-  TSizes.sm *2, // Adjust height to fit within container padding
                    ),
                  //sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.Secondary.withOpacity(0.8),
                     padding: EdgeInsets.symmetric(horizontal: TSizes.sm,vertical: TSizes.xs),
                      child: Text('25%',style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
                    ),
                  ),
                  // favorite icon button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
                    ),
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtwItems / 2),
            //details
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child:SizedBox(
                width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(title: 'Green Nike Air Shoes',smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems /2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
              ),
            ),
              // to add spacer() here to keep the height of each box
                     Spacer(),
                  // price row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //price 
                      Padding(
                        padding: const EdgeInsets.only(left: TSizes.sm),
                        child: TProductPriceText(price: '35.0',),
                      ),
                      // add to cart button
                      Container(
                        decoration: BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(TSizes.cardRadiusMd),
                            bottomLeft: Radius.circular(TSizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Center(child: Icon(Iconsax.add,color: TColors.white,)),
                          ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}



