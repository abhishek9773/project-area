import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hamara_shop/features/authentication/screens/password_configuraton/reset_password.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(),
      body:  Padding(
        padding:EdgeInsets.all(USize.defaultSpace),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ 
            /// Headings
            Text(UTexts.forgetPassowrdTitle,style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: USize.spaceBtwItems),
            Text(UTexts.forgetPassowrdSubTitle, style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: USize.spaceBtwSections * 2,),

            /// Text field
            TextFormField( 
              decoration:const InputDecoration( 
                labelText: UTexts.email,prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(height: USize.spaceBtwSections,),
            
            /// Submit Button 
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: ()=> Get.off(()=> const ResetPassword()), child:const Text(UTexts.submit),)),
            



            
          ],
        ), ),
    );
  }
}