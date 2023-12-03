import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';

class UFromDivider extends StatelessWidget {
  const UFromDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? UColor.darkGrey : UColor.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          UTexts.orSignInwith.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: dark ? UColor.darkGrey : UColor.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),

      ],
    );
  }
}
