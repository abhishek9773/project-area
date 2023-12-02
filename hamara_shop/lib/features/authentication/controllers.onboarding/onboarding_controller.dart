import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingContorller extends GetxController {
  static OnBoardingContorller get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> CurrentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => CurrentPageIndex = index;

  /// Jump  to the specific dot selecton page.
  void dotNavigationClick(index) {
    CurrentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// jump to the specifc dot selected paage.
  void nextPage() {
    if (CurrentPageIndex.value == 2) {
     // Get.to(LoginScreen());
    } else {
      int page = CurrentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Uupdate current index & jump to the last page.
  void skipPage() {
    CurrentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
