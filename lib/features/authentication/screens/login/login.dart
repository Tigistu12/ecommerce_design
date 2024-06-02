import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:my_ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:my_ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:my_ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:my_ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
// import 'package:my_ecommerce_app/utils/constants/colors.dart';
// import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo,title and subtitle
              TLoginHeader(dark: dark),

              //form
              TLoginForm(),

              //divider
              TFormDivider(dividerText:TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections,),
              //footer
               TSocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}








