import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';

class UTermsAndConditionCheckbox extends StatelessWidget {
  const UTermsAndConditionCheckbox({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: USize.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${UTexts.isAgreeTo}',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: '${UTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? UColor.white : UColor.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? UColor.white : UColor.primary)),
              TextSpan(
                  text: '${UTexts.and}',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: UTexts.termsOfUser,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? UColor.white : UColor.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? UColor.white : UColor.primary)),
            ],
          ),
        ),
      ],
    );
  }
}
