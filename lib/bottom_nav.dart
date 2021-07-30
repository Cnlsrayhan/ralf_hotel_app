import 'package:flutter/material.dart';
import 'package:ralf_hotel_app/pages/detail_page.dart';
import 'package:ralf_hotel_app/pages/home_page.dart';
import 'package:ralf_hotel_app/pages/invoice.dart';
import 'package:ralf_hotel_app/pages/profile.dart';
import 'package:ralf_hotel_app/pages/search.dart';
import 'package:ralf_hotel_app/theme.dart';

class BottomScreen extends StatefulWidget {
  @override
  _BottomScreenState createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  // ignore: unused_field
  late List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': Home(),
      },
      {
        'page': DetailPage(),
      },
      {
        'page': Invoice(),
      },
      {
        'page': Profile(),
      },
      {
        'page': Search(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          selectedLabelStyle: blueTextStyle,
          selectedItemColor: kBlueColor,
          unselectedLabelStyle: greyTextStyle,
          unselectedItemColor: kGreyColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Image.asset(
                'assets/icon_home.png',
                width: 24,
                color: kBlueColor,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Image.asset(
                'assets/icon_search.png',
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Image.asset(
                'assets/icon_order.png',
                width: 24,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Image.asset(
                'assets/icon_profile.png',
                width: 24,
              ),
            ),
          ],
        ));
  }
}
