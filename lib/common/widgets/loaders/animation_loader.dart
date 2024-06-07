import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

// a widget for displaying on animated loading indicator with optional text and action button.
class TAnimationLoadingWidget extends StatelessWidget {
  // default constructor for the TAnimationLoadingWidget.
  // parameters:
  // - Text: the text to be displayed below the animation.
  // - animation: the path to the lottie animation file.
  // - showAction:   whether to show an action button below the text
  // actionText: the text to be displayed on the action button
  // - onActionpressed: callback function to be executed when the action button is pressed.
  const TAnimationLoadingWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
    
    });

final String text;
final String animation;
final bool showAction;
final String? actionText;
final VoidCallback? onActionPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,width: MediaQuery.of(context).size.width *0.8),
          SizedBox(height: TSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: TSizes.defaultSpace),
          showAction
          ? SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onActionPressed,
              style: OutlinedButton.styleFrom(backgroundColor: TColors.dark),
               child: Text(
                 actionText!,
                 style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.light),
               ),
               ),
          )
          : SizedBox()
        ],
      ),
    );
  }
}