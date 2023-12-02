import 'package:booking/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationMyTravel extends StatefulWidget {
  const BottomNavigationMyTravel({super.key});

  @override
  State<BottomNavigationMyTravel> createState() =>
      _BottomNavigationMyTravelState();
}

class _BottomNavigationMyTravelState extends State<BottomNavigationMyTravel> {
  int _selectedIndex = 0;

  var bottomTextStyle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: mFillColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? new SvgPicture.asset('assets/icons/home2-color.svg')
                : new SvgPicture.asset('assets/icons/home.svg'),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new SvgPicture.asset('assts/icons/last.svg')
                : new SvgPicture.asset('assets/icons/home.svg'),
            label: 'Home',
          ), 
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mGreyColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,

        //body
        

      ),
    );
  }
}
