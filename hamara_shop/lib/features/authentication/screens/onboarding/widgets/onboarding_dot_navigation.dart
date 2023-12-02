import 'package:flutter/material.dart';
import 'package:hamara_shop/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/device/device_utility.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingContorller.instance;
    final dark = UHelperFunction.isDarkMode(context);

    return Positioned(
      bottom: UDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: USize.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? UColor.light : UColor.dark, dotHeight: 6),
      ),
    );
  }
}
