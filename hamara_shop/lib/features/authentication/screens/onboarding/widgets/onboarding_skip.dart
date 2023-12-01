import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/device/device_utility.dart';

class OnBoarderSkip extends StatelessWidget {
  const OnBoarderSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top: UDeviceUtils.getAppBarHeight(), right: USize.defaultSpace,child: TextButton(onPressed: (){}, child: const Text('skip'),));
  }
}