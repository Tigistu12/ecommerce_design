import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:my_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=>Get.offAll(()=>LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        //padding to give default space on all sides in all Screens.
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(image: AssetImage(TImages.deliveredEmailIllustration),width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Title & subtitle
              Text(TTexts.confirmEmail,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('support@tsore.com',style: Theme.of(context).textTheme.labelLarge,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=> Get.to(()=>SucessScreen(
                  image: TImages.staticSuccessIllustration,
                  title: TTexts.yourAccountCreatedTitle,
                  subTitle: TTexts.yourAccountCreatedSubTitle,
                  onPressed: ()=>Get.to(()=> LoginScreen()),
                )),
                 child: Text(TTexts.tContinue)
                )),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(width: double.infinity,child: TextButton(onPressed: (){}, child: Text(TTexts.resendEmail))),

            ],
          ),
          ),
      ),
    );
  }
}