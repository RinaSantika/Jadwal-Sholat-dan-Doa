import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';
import 'package:tubes_pppb/listkota.dart';
import 'package:tubes_pppb/main.dart';
import 'package:tubes_pppb/profil.dart';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; //default index

  List<Widget> _widgetOptions = [
    HomeScreen(),
    KotaList(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CustomLineIndicatorBottomNavbar(
        selectedColor: Color(0xff180c20),
        unSelectedColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 34, 58, 176),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        enableLineIndicator: true,
        lineIndicatorWidth: 3,
        indicatorType: IndicatorType.Top,
        // gradient: LinearGradient(
        //   colors: [Colors.pink, Colors.yellow],
        // ),
        customBottomBarItems: [
          CustomBottomBarItems(
            label: 'Doa',
            icon: Icons.home,
          ),
          CustomBottomBarItems(
            label: 'Jadwal Solat',
            icon: Icons.timer,
          ),
          CustomBottomBarItems(
            label: 'Account',
            icon: Icons.account_box_outlined,
          ),
        ],
      ),
    );
  }
}
