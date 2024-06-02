import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/brands/brand_show_case.dart';
import 'package:my_ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:my_ecommerce_app/common/widgets/products/product_cards/produtc-card_vertical.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
       Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //brands
                  TBrandShowCase(images: [TImages.productImage1,TImages.productImage2,TImages.productImage3]),
                  TBrandShowCase(images: [TImages.productImage1,TImages.productImage2,TImages.productImage3]),
                  SizedBox(height: TSizes.spaceBtwItems),
                  //products
                  TSectionHeading(title: 'You might like',showActionButton: true,onPressed: (){}),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TGridLayout(itemCount: 4, itemBuilder: (_,index)=>TProductCardVertical()),
                  SizedBox(height: TSizes.spaceBtwSections),
      
                ],
              ),
              ),
      ],
    );
  }
}