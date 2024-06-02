import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';


class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? TImages.lightAppLogo : TImages.darkAppLogo),
        ),
        Text(
          TTexts.logInTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox( height: TSizes.sm, ),
        Text( TTexts.logInSubTitle, style: Theme.of(context).textTheme.bodyMedium,  ),
      ],
    );
  }
}