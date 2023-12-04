import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamara_shop/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:hamara_shop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:hamara_shop/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:hamara_shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:hamara_shop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:hamara_shop/utils/constants/image_string.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext constext) {
    final controller = Get.put(OnBoardingContorller());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: UImage.onBoardingImage1,
                title: UTexts.onBoardingTitle1,
                subTitle: UTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: UImage.onBoardingImage2,
                title: UTexts.onBoardingTitle2,
                subTitle: UTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: UImage.onBoardingImage1,
                title: UTexts.onBoardingTitle2,
                subTitle: UTexts.onBoardingSubTitle2,
              ),
            ],
          ),

          /// Skip Button
          const OnBoarderSkip(),

          /// Bot Navigation SmothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
