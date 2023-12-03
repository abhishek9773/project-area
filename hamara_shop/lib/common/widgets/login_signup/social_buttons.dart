import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/colors.dart';
import 'package:hamara_shop/utils/constants/image_string.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';

class USocialButtons extends StatelessWidget {
  const USocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: UColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon:const  Image(
              width: USize.iconMd,
              height: USize.iconMd, 
              image: AssetImage(UImage.google),
            ), 
          ),
        ),
        SizedBox(width:USize.spaceBtwItems),
       Container(
          decoration: BoxDecoration(
              border: Border.all(color: UColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon:const  Image(
              width: USize.iconMd,
              height: USize.iconMd, 
              image: AssetImage(UImage.facebook),
            ), 
          ),
        ),
      ],
    );
  }
}
