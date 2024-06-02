import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change',onPressed: (){}),
       Text('Tigistu',style: Theme.of(context).textTheme.bodyLarge),
       SizedBox(height: TSizes.spaceBtwItems /2),

       Row(
        children: [
        Icon(Icons.phone,color: Colors.grey,size: 16),
        SizedBox(width: TSizes.spaceBtwItems),
        Text('+2519 -3204-1389',style: Theme.of(context).textTheme.bodyMedium),
       ],
       ),
       SizedBox(height: TSizes.spaceBtwItems /2),

        Row(
        children: [
        Icon(Icons.location_history,color: Colors.grey,size: 16),
        SizedBox(width: TSizes.spaceBtwItems),
        Expanded(child: Text(' Addis Ababa Ethiopia',style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
       ],
       ),


      ],
    );
  }
}