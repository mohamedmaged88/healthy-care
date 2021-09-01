import 'package:flutter/material.dart';
import '/core/constants/colors.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: AppColors.primary,
    dividerColor: AppColors.lightGrey,
  );
}
