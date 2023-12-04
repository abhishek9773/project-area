import 'package:flutter/material.dart';
import 'package:hamara_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/device/device_utility.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);

    return Positioned(
        right: USize.defaultSpace,
        bottom: UDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingContorller.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: dark? UColor.black:UColor.white),
          child: Icon(Icons.next_plan),  // here they use 'Iconsex.arrow_right_3
        ));
  }
}
