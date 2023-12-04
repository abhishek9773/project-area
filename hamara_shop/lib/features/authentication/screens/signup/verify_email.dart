import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hamara_shop/common/widgets/success_screen/success_screen.dart';
import 'package:hamara_shop/features/authentication/screens/login/login.dart';
import 'package:hamara_shop/utils/constants/image_string.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';

class VerifyEmailSreen extends StatelessWidget {
  const VerifyEmailSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: SingleChildScrollView(
        // ppadding to Give Default Equal Space on alll sides in screens.
        child: Padding(
          padding: const EdgeInsets.all(USize.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(UImage.deliveredEmailIllustration),
                width: UHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: USize.spaceBtwSections,
              ),

              /// Title & SubTitle
              Text(
                UTexts.confiremEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: USize.spaceBtwItems),
              Text('support@codingUItht.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: USize.spaceBtwItems),
              Text(
                UTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: USize.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                    image: UImage.staticSuccessIllustration , 
                    title: UTexts.yourAccountCreatedTitle,
                    subTitle: UTexts.yourAccountCreatedSubTitle, 
                    onPressed: () => Get.to(()=> const LoginScreen()),
                    )
                  ),
                  child: const Text(UTexts.ucontinue),
                ),
              ),
              const SizedBox(
                height: USize.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(UTexts.resendEmail)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
