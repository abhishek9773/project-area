import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hamara_shop/features/authentication/screens/signup/widgets/signup.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class ULoginFrom extends StatelessWidget {
  const ULoginFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: USize.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration:const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: UTexts.email,
              ),
            ),
            const SizedBox(
              height: USize.spaceBtwInputFields,
            ),
    
            /// password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: UTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: USize.spaceBtwInputFields / 2),
    
            // Remeber me and Forget Passowrd
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(UTexts.rememberMe),
                  ],
                ),
    
                /// Forget password
                TextButton(
                    onPressed: () {},
                    child: const Text(UTexts.forgetPassword))
              ],
            ),
            const SizedBox(
              height: USize.spaceBtwSections,
            ),
    
            /// Sing  in Button
            SizedBox(
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(UTexts.signIn))),
    
            const SizedBox(
              height: USize.spaceBtwItems,
            ),
    
            /// Create Account Button
            SizedBox(
                child: OutlinedButton(
                    onPressed: () => Get.to(()=> const SignupScreen()),
                    child: const Text(UTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
