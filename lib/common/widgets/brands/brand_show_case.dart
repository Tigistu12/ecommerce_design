import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/brands/brand_card.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TBrandShowCase extends StatelessWidget {
  const TBrandShowCase({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(TSizes.md),
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // brand with products count
          TBrandCard(showBorder: false),
          SizedBox(height: TSizes.spaceBtwItems),
    
          //brand tap 3 product images
          Row(
            children: images.map((image)=>brandTopProductImageWidget(image, context)).toList(),
          )
    
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context){
    return Expanded(
                child: TRoundedContainer(
                  height: 100,
                  backgroundColor: THelperFunctions.isDarkMode(context)?TColors.darkerGrey:TColors.light,
                  margin: EdgeInsets.only(right: TSizes.sm),
                  padding: EdgeInsets.all(TSizes.md),
                  child: Image(fit: BoxFit.contain,image: AssetImage(image)),
                ),
              );
  }
}