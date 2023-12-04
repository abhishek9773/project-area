import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/device/device_utility.dart';
import 'package:iconsax/iconsax.dart';

class UAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UAppBar({super.key, this.title, this.showBackArrow = false, this.leadingIcon, this.actions, this.leadingOnPressed });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.symmetric(horizontal: USize.md),
    child: AppBar( 
      automaticallyImplyLeading: false,
      leading:showBackArrow 
      ? IconButton(onPressed: () => Get.back(), icon:const Icon(Iconsax.arrow_left) )
      : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)): null,
      title: title,
      actions: actions,
    ),

    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(UDeviceUtils.getAppBarHeight());
}
