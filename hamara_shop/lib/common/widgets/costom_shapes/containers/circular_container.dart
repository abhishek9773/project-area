import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/colors.dart';

class UCircularContainer extends StatelessWidget {
  const UCircularContainer({
    super.key,
    this.child,
    this.width=400,
    this.height = 400,
    this.radius = 400, 
    this.padding = 0, 
    this.backgorundColor = UColor.white,
    
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgorundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color:backgorundColor,
      ),
      child: child,
    );
  }
}
