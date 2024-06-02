import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:my_ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:my_ecommerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
// import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
// import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),
              // form
              TSignupForm(),
              //divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              //social buttons
              const TSocialButtons(),
              


            ],
          ),
        ),
      ),
    );
  }
}

