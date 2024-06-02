import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/constants/texts-strings.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TTermsAndConditionCheckbox extends StatelessWidget {
  const TTermsAndConditionCheckbox({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
  final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child:
                Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
          TextSpan(
              text: '${TTexts.iAgreeTo}',
              style: Theme.of(context).textTheme.bodySmall),
        
              TextSpan(text: '${TTexts.privacypolicy} ',style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColors.white : TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark? TColors.white:TColors.primary,
              )),
        
              TextSpan(
              text: '${TTexts.and}',
              style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: TTexts.termsOfUse,style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColors.white : TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark? TColors.white:TColors.primary,
              )),
        ]),
        ),
      ],
    );
  }
}