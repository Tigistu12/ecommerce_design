import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_ecommerce_app/common/widgets/loaders/animation_loader.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';



// a utility class for managing a full screen loading dialog.
class TFullScreenLoader{
  // open a full-screen loading with a given text and animation
  // this method doesn't return anything

  // parameters
  // text: the text to be displayed i the loading dialog
  // - animation: the lottle animation to be shown
  static void openLoadingDialog(String text, String animation){
    showDialog(
      context: Get.overlayContext!, //use Get.overlayContext for overlay dialogs
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false, // diable popping with the back button
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark: TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 250), //adjust the spacing as need
              TAnimationLoadingWidget(text:text, animation: animation),
            ],
          ),
        ),
        ),
    );
  }

  // stop the currently open loading dialog.
  // this method doesn't return anything.
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();  // close the dialog using the Navigator
  }
}