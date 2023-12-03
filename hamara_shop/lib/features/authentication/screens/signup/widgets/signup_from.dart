import 'package:flutter/material.dart';
import 'package:hamara_shop/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class USignupFrom extends StatelessWidget {
  const USignupFrom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: UTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: USize.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: UTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),

          /// username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: UTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),

          /// Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: UTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),

          /// Phone Number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: UTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(height: USize.spaceBtwInputFields),

          /// Password
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: UTexts.password,
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: USize.spaceBtwInputFields),

          /// Terms& conditions Checkbox
         const UTermsAndConditionCheckbox(),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(UTexts.createAccount)),
          )
        ],
      ),
    );
  }
}

