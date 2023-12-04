import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class UCartCounterIcon extends StatelessWidget {
  const UCartCounterIcon({
    super.key,
    required this.onPressed, 
    required this.iconColor ,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: onPressed,
          icon:  Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 10,
          decoration: BoxDecoration(
            color: UColor.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
              child: Text(
            '2',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: UColor.white),
          )),
        ),
      ),
    ]);
  }
}
