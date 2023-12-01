import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hamara_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:hamara_shop/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const  OnBoardingScreen(),
    );
  }
}
