import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //headings
            Text(TTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(TTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            //text field
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.email,prefixIcon: Icon(Iconsax.direct_right)
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //submit button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(()=> ResetPassword()), child: Text(TTexts.submit,)))
            
          ],
        ),
        ),
    );
  }
}