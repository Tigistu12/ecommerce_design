import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:my_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:my_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:my_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
// import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
// import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
// import 'package:my_ecommerce_app/utils/device/device_utility.dart';
// import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontan scroll page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.OnBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage3,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip button
          OnBoardingSkip(),
          //dot navigation smoothpageindicator
          OnBoardingDotNavigation(),
          //cirtular button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}


