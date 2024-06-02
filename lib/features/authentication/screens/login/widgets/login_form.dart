import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:my_ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:my_ecommerce_app/navigation_menu.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //email
      TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.direct_right),
          labelText: TTexts.email,
        ),
         ),
         const SizedBox(height: TSizes.spaceBtwInputFields,),
          //password
          TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.password_check),
          labelText: TTexts.password,
          suffixIcon: Icon(Iconsax.eye_slash),
        ),
         ),
         const SizedBox(height: TSizes.spaceBtwInputFields /2),
         //remember me and forget password
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //remember me
           Row(
            children: [
              Checkbox(value: true, onChanged: (value){}),
              const Text(TTexts.rememberMe),   
            ],
           ),
            //forget password
            TextButton(onPressed: ()=> Get.to(()=>ForgetPassword()), child: const Text(TTexts.forgetPassword)),
          ],
         ),
         const SizedBox(height: TSizes.spaceBtwSections,),
         //sign in button
    
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(onPressed: ()=> Get.to(()=> NavigationMenu()), child: Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBtwItems,),
         //create account button
    
         SizedBox(
          width: double.infinity,
          child: OutlinedButton(onPressed: () => Get.to(() => SignupScreen()), child: Text(TTexts.createAccount))),
          
        ],
      ),
    ),
    );
  }
}