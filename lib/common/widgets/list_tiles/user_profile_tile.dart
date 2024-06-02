import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:my_ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.onPressed,
  });
 final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Tigistu',style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),),
      subtitle: Text('tigistu@gmail.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white)),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Iconsax.edit,color: TColors.white)),
    );
  }
}