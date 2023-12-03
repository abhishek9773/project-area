import 'package:flutter/material.dart';

class UColor {
  UColor._();

  // App Basic Colors
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE248);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xFFFF9a9a),
        Color(0xFFFad0c4),
        Color(0xFFFad0c4),
      ]);

  // text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondery = Color(0xFF6c7570);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors.
  static const Color lightContaier = Color(0xFFF6F6f6);
  static Color darkContainer = UColor.textWhite.withOpacity(0.1);

  // button Colors
  static const Color buttonprimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6c7570);
  static const Color buttonDisable = Color(0xFFc4c4c4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Errro Colors
  static const Color error = Color(0xFFd32f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFF57c00);
  static const Color info = Color(0xFF1976D2);

  // Nautrial Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xff4f4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffE0E0E0);
  static const Color softGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}
