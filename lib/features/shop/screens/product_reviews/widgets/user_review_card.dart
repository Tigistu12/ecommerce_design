import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
               CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)), 
               SizedBox(width: TSizes.spaceBtwItems),
               Text('Mery Jon',style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Jun 2024',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the App is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job! ',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        // Company Review
        TRoundedContainer(
          backgroundColor: dark? TColors.darkerGrey: TColors.grey,
          child: Padding(
            padding: EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",style: Theme.of(context).textTheme.titleMedium),
                    Text("01 Jun 2024",style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                 SizedBox(height: TSizes.spaceBtwItems),
        ReadMoreText(
          'The user interface of the App is quite intuitive. I was able to navigate and make purchases seamlessly. Great Job! ',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: TColors.primary),
        ),
         ],
          ),
          ),
        ),
        SizedBox(height: TSizes.spaceBtwSections),


      ],
    );
  }
}