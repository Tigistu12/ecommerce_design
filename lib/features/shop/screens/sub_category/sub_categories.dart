import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:my_ecommerce_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports '),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              TRoundedImage(width: double.infinity, imageUrl: TImages.promoBanner4,applyImageRadius: true),
              SizedBox(height: TSizes.spaceBtwSections),

              // Sub categories
              Column(
                children: [
                  //heading
                  TSectionHeading(title: 'Sport shirts',onPressed: (){},),
                  SizedBox(height: TSizes.spaceBtwItems /2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) => TProductCartHorizontal(),
                    ),
                  ),
                ],
              )
            ],
          ),

          ),
      ),
    );
  }
}