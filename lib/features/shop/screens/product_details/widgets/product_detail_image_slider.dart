import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:my_ecommerce_app/common/widgets/icons/t_circular_icon.dart';
import 'package:my_ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark? TColors.darkerGrey: TColors.light,
        child: Stack(
          children: [
            // Main Large Image
            SizedBox(
              height: 400, 
              child: Padding(
              padding: const EdgeInsets.all(TSizes.productImageRadius * 2 ),
              child: Center(child: Image(image: AssetImage(TImages.productImage5))),
            ),
            ),
    
            //image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  separatorBuilder: (_, __)=> SizedBox(width: TSizes.spaceBtwItems,),
                   itemCount: 6,
                   shrinkWrap: true,
                   scrollDirection: Axis.horizontal,
                   physics: AlwaysScrollableScrollPhysics(),
                   itemBuilder: (_, index)=>  TRoundedImage(
                    width: 80,
                    backgroundColor: dark? TColors.dark: TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.productImage3,
                    ),
                    ),
              ),
            ),
            // Appbar Icons
            TAppBar(
              showBackArrow: true,
              actions: [TCircularIcon(icon: Iconsax.heart5,color: Colors.red)],
            )
             
            
    
          ],
        ),
      ),
    );
  }
}