import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/features/authentication/controllers/login/login_controller.dart';
import 'package:my_ecommerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:my_ecommerce_app/features/authentication/screens/signup/signup.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
import 'package:my_ecommerce_app/utils/validators/validation.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      key: controller.loginFormKey,
      child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //email
      TextFormField(
        controller: controller.email,
        validator: (value) => TValidator.validateEmail(value),
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.direct_right),
          labelText: TTexts.email,
        ),
         ),
         const SizedBox(height: TSizes.spaceBtwInputFields),
          //password
          Obx(
            () => TextFormField(
              validator: (value) => TValidator.validatePassword(value),
              controller: controller.password,
              obscureText: controller.hidePassword.value,
              decoration:  InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                     icon: Icon(controller.hidePassword.value ? Iconsax.eye_slash : Iconsax.eye),
                     ),
                     ),
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
              Obx(
                () => Checkbox(value: controller.rememberMe.value,
                 onChanged: (value) => controller.rememberMe.value = !controller.rememberMe.value),
                 ),
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
          child: ElevatedButton(onPressed: ()=> controller.emailAndPasswordSignIn(), child: Text(TTexts.signIn))),
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