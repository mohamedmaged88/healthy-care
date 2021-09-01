import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/colors.dart';
import 'package:healthycare/core/helpers/format_date.dart';

// ignore: must_be_immutable
class Today extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(CustomFormatDate.formatDateMonth.substring(0, 3));
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: 62,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    CustomFormatDate.formatDateMonth
                        .substring(0, 3)
                        .toUpperCase(),
                    style: TextStyle(
                      color: AppColors.background,
                    ),
                  ),
                  Text(
                    CustomFormatDate.formatDateDay,
                    style: TextStyle(
                      color: AppColors.background,
                    ),
                  ),
                  Text(
                    CustomFormatDate.formatDateDayName
                        .substring(0, 3)
                        .toUpperCase(),
                    style: TextStyle(
                      color: AppColors.background,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
