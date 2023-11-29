import 'package:flutter/material.dart';
import 'package:hamara_shop/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
