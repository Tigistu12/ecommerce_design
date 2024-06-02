import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/device/device_utility.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
