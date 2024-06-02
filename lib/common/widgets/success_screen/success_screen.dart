import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';
class SucessScreen extends StatelessWidget {
  const SucessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});


final  String image,title,subTitle;
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight *2,
          child: Column(
            children: [
              //image
            Image(image: AssetImage(image),width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Title & subtitle
              Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(subTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),
              //buttons
              SizedBox(
             width: double.infinity,
          child: ElevatedButton(onPressed: onPressed, child: Text(TTexts.tContinue)),
          ),
            ],
              ),
          ),
          ),
      );
  }
}
