import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:my_ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:my_ecommerce_app/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:my_ecommerce_app/utils/constants/enums.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';
import 'package:my_ecommerce_app/utils/constants/sizes.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,

    });

    final bool showBorder;
    final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    //final isdark = THelperFunctions.isDarkMode(context);
              return GestureDetector(
                      onTap: onTap,
                      //container design
                      child: TRoundedContainer(
                        showBorder: showBorder,
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.all(TSizes.sm),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //icon
                            Flexible(
                              child: TCircularImage(
                                isNetworkImage: false,
                                image: TImages.clothIcon,
                                backgroundColor: Colors.transparent,
                                //overlayColor: isdark? TColors.white:TColors.black
                              ),
                            ),
                            SizedBox( width:  TSizes.spaceBtwItems/2),
                            //Texts
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.large,),
                                  Text(
                                   '256 Products',
                                    overflow: TextOverflow.ellipsis,
                                    //it should be labelMedium other wise overflow occurs unless it is nested scroll view
                                    style: Theme.of(context).textTheme.labelMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
  }
}