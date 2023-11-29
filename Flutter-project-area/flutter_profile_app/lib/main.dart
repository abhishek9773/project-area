import 'package:flutter/material.dart';
import 'package:flutter_profile_app/profile_ui.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyan,
      ),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileUI(),
      
    );
  }
}
