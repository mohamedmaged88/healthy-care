import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/colors.dart';
import 'package:healthycare/core/constants/icons.dart';

import 'bottomNavigationBarItem.dart';

BottomNavyBar bottomNavigationBar({
  required int currentIndex,
  required Function(int) onTap,
}) {
  return BottomNavyBar(
    animationDuration: Duration(milliseconds: 320),
    iconSize: 22,
    backgroundColor: AppColors.primary,
    onItemSelected: onTap,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    selectedIndex: currentIndex,
    showElevation: false,
    items: [
      bottomNavigationBarItem(icon: homeIcon, label: 'Home'),
      bottomNavigationBarItem(icon: gridIcon, label: 'Grid'),
      bottomNavigationBarItem(icon: accountIcon, label: 'Account'),
    ],
    containerHeight: 58,
  );
}
