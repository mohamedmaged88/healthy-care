import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/colors.dart';

BottomNavyBarItem bottomNavigationBarItem({
  required Icon icon,
  required String label,
}) {
  return BottomNavyBarItem(
    icon: icon,
    title: Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.normal,
      ),
    ),
    activeColor: AppColors.primary,
    inactiveColor: AppColors.background,
  );
}
