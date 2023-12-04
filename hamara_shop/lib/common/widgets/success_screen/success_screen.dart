import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamara_shop/common/styles/spacing_style.dart';
import 'package:hamara_shop/features/authentication/screens/login/login.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: USpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                image:  AssetImage(image),
                width: UHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: USize.spaceBtwSections,
              ),

              /// Title & SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: USize.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: USize.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const LoginScreen()),
                  child: const Text(UTexts.ucontinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
