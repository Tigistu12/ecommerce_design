import 'package:flutter/material.dart';
import 'package:my_ecommerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:my_ecommerce_app/utils/constants/colors.dart';
import 'package:my_ecommerce_app/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this. selected,
    this.onSelected,
  });

final String text;
final bool selected;
final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = THelperFunctions.getColor(text)!=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor? SizedBox():Text(text),
        selected: selected,
         onSelected: onSelected,
         labelStyle: TextStyle(color: selected? TColors.white: null),
         avatar: isColor
         ? TCircularContainer(width: 50,height: 50,backgroundColor: THelperFunctions.getColor(text)!)
         :null,
         labelPadding: isColor? EdgeInsets.all(0):null,
         padding: isColor? EdgeInsets.all(0):null,
         shape: isColor? CircleBorder():null,
         backgroundColor: isColor? THelperFunctions.getColor(text)! :null,
         ),
    );
  }
}