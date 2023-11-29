import 'package:flutter/material.dart';
import 'package:booking/Screen/home_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "Travel aap",
      home: HomeScreen(),
    );
  }
}