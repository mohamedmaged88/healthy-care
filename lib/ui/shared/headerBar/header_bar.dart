import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthycare/core/constants/icons.dart';
import 'package:simple_shadow/simple_shadow.dart';

AppBar headerBar({
  required BuildContext context,
  required String title,
  required Color titleColor,
  required double fontSize,
}) {
  return AppBar(
    toolbarHeight: MediaQuery.of(context).size.height / 7,
    title: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: titleColor,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 35),
        child: SimpleShadow(
          child: SvgPicture.asset(
            footstepsIcon,
            height: 45,
            width: 45,
          ),
          opacity: 0.6,
          color: Colors.blue,
          sigma: 3,
        ),
      ),
    ],
  );
}
