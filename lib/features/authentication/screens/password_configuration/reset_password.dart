import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
            //image
            Image(image: AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Title & subtitle
              Text(TTexts.changePasswordTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.chnagePasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),
              //buttons
              SizedBox(
             width: double.infinity,
          child: ElevatedButton(onPressed: (){}, child: Text(TTexts.done)),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
             width: double.infinity,
          child: TextButton(onPressed: (){}, child: Text(TTexts.resendEmail)),
          ),
            ],
          ),
          ),
      ),
    );
  }
}