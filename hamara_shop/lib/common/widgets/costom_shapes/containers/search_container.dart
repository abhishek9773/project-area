import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/device/device_utility.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class USearchContainer extends StatelessWidget {
  const USearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal,  this.showBackground = true , this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: USize.defaultSpace),
      child: Container( 
        width: UDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(USize.md),
        decoration: BoxDecoration( 
          color:showBackground ? dark ? UColor.dark : UColor.light :Colors.transparent,
          borderRadius: BorderRadius.circular(USize.cardRadiusLg),
          border: showBorder ? Border.all(color: Colors.grey) : null,
        ),
        child: Row( 
          children: [ 
            const Icon(Iconsax.search_normal, color: UColor.grey,),
            const SizedBox(width: USize.spaceBtwSections,),
             Text('Search in Store', style: Theme.of(context).textTheme.bodySmall),
    
          ],
        ),
      ),
    );
  }
}

