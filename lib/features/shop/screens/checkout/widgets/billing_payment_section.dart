import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';
class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Methods', buttonTitle: 'Change',onPressed: (){}),
        SizedBox(height: TSizes.spaceBtwItems /2),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark? TColors.light:TColors.white,
              padding: EdgeInsets.all(TSizes.sm),
              child: Image(image: AssetImage(TImages.paypal),fit: BoxFit.contain),
            ),
            SizedBox(width: TSizes.spaceBtwItems /2),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}