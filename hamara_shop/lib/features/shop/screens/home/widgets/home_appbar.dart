import 'package:flutter/material.dart';
import 'package:hamara_shop/common/widgets/appbar/appbar.dart';
import 'package:hamara_shop/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';

class UHomeAppBar extends StatelessWidget {
  const UHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(UTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: UColor.grey)),
          Text(UTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: UColor.white)),
        ],
      ),
      actions:  [UCartCounterIcon(onPressed:(){}, iconColor:UColor.white)],

    );
  }
}

