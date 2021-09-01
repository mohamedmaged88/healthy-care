import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/colors.dart';
import 'package:healthycare/ui/pages/account/account_page.dart';
import 'package:healthycare/ui/pages/home/home_page.dart';
import 'package:healthycare/ui/pages/stepsCounter/steps_counter_page.dart';

import 'widgets/bottomNavigationBar.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Widget> _pages = [
    HomePage(),
    StepsCounterPage(),
    // TestPedometerPage(),
    AccountPage(),
  ];
  int _currentIndex = 0;

  void selectPage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          bottom: 8,
          right: 8,
          left: 8,
        ),
        child: bottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: selectPage,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.scaffoldColor,
        ),
        child: _pages[_currentIndex],
      ),
    );
  }
}
