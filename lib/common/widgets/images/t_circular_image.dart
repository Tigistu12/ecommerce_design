import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';


class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key, 
       this.width = 56, 
        this.height = 56,
       this.overlayColor, 
       this.backgroundColor,
       required this.image, 
         this.fit = BoxFit.cover,
        this.padding = TSizes.sm,
        this.isNetworkImage = false,
  });

  final BoxFit fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width,height,padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // if the background color is null then switch it to light and dark mode color design
        color: backgroundColor??(THelperFunctions.isDarkMode(context) ? TColors.black: TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage? NetworkImage(image): AssetImage(image)as ImageProvider,
          color: overlayColor,
          //color: THelperFunctions.isDarkMode(context) ? TColors.white: TColors.dark,
          ),
      ),
    
    );
  }
}