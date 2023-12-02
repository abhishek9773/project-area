import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: USize.appBarHeight,
            left: USize.defaultSpace,
            bottom: USize.defaultSpace,
            right: USize.defaultSpace,
          ),
        ),
      ),
    );
  }
} 
