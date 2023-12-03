import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:hamara_shop/common/widgets/login_signup/from_divider.dart';
import 'package:hamara_shop/common/widgets/login_signup/social_buttons.dart';
import 'package:hamara_shop/features/authentication/screens/signup/widgets/signup_from.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(USize.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(UTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(
                  height: USize.spaceBtwSections,
                ),

                /// From
                const USignupFrom(),
                ///Divider 
                UFromDivider(dividerText: UTexts.orSignInwith.capitalize!),
                const SizedBox(height: USize.spaceBtwSections,),
                /// Socal Buttons
                const USocialButtons(),
              ],
            ),
          ),
        ));
  }
}

