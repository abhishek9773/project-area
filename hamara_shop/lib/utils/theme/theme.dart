import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:hamara_shop/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:hamara_shop/utils/theme/custom_themes/chip_theme.dart';
import 'package:hamara_shop/utils/theme/custom_themes/elevated_buttom_theme.dart';
import 'package:hamara_shop/utils/theme/custom_themes/outline_buttom_theme.dart';
import 'package:hamara_shop/utils/theme/custom_themes/text_filed_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    chipTheme: TChipTheme.lightChipTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    scaffoldBackgroundColor: Colors.black,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme:TElevatedButtonTheme.lightElevatedButtomTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    chipTheme: TChipTheme.darkChipTheme,
    checkboxTheme: TCheckboxTheme.darkCheckBoxTheme,
    scaffoldBackgroundColor: Colors.black,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme:TElevatedButtonTheme.darkElevatedButtomTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
