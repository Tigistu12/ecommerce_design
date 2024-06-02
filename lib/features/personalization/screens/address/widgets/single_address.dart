import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,
    });

    final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      padding: EdgeInsets.all(TSizes.md),
      width: double.infinity,
      backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5):Colors.transparent,
      borderColor: selectedAddress
       ? Colors.transparent 
       : dark 
       ? TColors.darkerGrey 
       : TColors.grey,

    margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
    child: Stack(
      children: [
        Positioned(
          right: 5,
          top: 0,
          child: Icon(
            selectedAddress ? Iconsax.tick_circle5:null,
            color: selectedAddress 
            ? dark 
            ? TColors.light
            : TColors.dark
            : null,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mery Jon',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: TSizes.sm / 2),
            Text('(+2519) 4321 1298',maxLines: 1,overflow: TextOverflow.ellipsis),
            SizedBox(height: TSizes.sm / 2),
            Text(' Bahir Dar , Debre Birhan ,Mexico  Addis Ababa Ethiopia',softWrap: true),
          ],
        ),
      ],
    ),
    );
  }
}