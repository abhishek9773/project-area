import 'package:booking/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:booking/widgets/bottom_navigation_mytravel.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => myHome();
}

class myHome extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/logo.svg'),
        elevation: 0,
      ),
      backgroundColor: mBackgroundColor,



      bottomNavigationBar: BottomNavigationMyTravel(),
    );
  }
}
