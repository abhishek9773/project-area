import 'package:flutter/material.dart';

final mBackgroundColor = Color(hexColor('#feefbc'));
final mBlueColor = Color(hexColor('#f0ece4'));
final mGreyColor = Color(hexColor('#e4be7a'));
final mTitleColor = Color(hexColor('#4f4f46'));
final mSubtitleColor = Color(hexColor('#fac674'));
final mBorderColor = Color(hexColor('#fde0ac'));
final mFillColor = Color(hexColor('#f4c17a'));
final mCardTitleColor = Color(hexColor('#6ec3d7'));
final mCardSubtitleColor = mTitleColor;

int hexColor(String color) {
  // prefix of hex color is '0xff' and replace # with that
  // and add and after # all things.
  String newcolor = '0xff' + color;
  newcolor = newcolor.replaceAll('#', '');

  return int.parse(newcolor);
}
