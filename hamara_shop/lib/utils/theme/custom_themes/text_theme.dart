import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: TextStyle().copyWith(fontSize:24.0, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: TextStyle().copyWith(fontSize:18.0, fontWeight: FontWeight.w600, color: Colors.black),

    titleLarge:TextStyle().copyWith(fontSize:16.0, fontWeight:  FontWeight.w600, color: Colors.black),
    titleMedium: TextStyle().copyWith(fontSize:16.0, fontWeight:FontWeight.w500 , color:Colors.black),
    titleSmall: TextStyle().copyWith(fontSize:16.0, fontWeight:FontWeight.w400, color: Colors.black),

    bodyLarge: const TextStyle().copyWith()

    

    
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: TextStyle().copyWith(fontSize:24.0, fontWeight: FontWeight.w600, color: Colors.white),
  );
}

