import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/image_string.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';

class ULoginHeader extends StatelessWidget {
  const ULoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? UImage.darkAppLogo : UImage.lightAppLogo),
        ),
        Text(UTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: USize.sm),
        Text(UTexts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
