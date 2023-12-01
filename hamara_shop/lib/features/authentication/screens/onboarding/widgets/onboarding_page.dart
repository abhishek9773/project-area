import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';
import 'package:hamara_shop/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle, 
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(USize.defaultSpace),
      child: Column(
        children: [
          Image(
            width: UHelperFunction.screenWidth() * 0.8,
            height: UHelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: USize.spaceBtwItems,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}