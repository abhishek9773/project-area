import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';
import 'package:hamara_shop/common/styles/spacing_style.dart';
import 'package:hamara_shop/common/widgets/login_signup/from_divider.dart';
import 'package:hamara_shop/common/widgets/login_signup/social_buttons.dart';
import 'package:hamara_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:hamara_shop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/image_string.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = UHelperFunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: USpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //? logo, Title & Sub-Title
              const ULoginHeader(),

              /// Form
             const  ULoginFrom(),

              /// Divider
              UFromDivider(dividerText: UTexts.orSignInwith.capitalize!),

              /// foolter
             const  USocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

