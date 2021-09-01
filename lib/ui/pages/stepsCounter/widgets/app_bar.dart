import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/colors.dart';
import 'package:healthycare/ui/shared/circleTabIndicator/circle_tab_indicator.dart';

AppBar appBar({required BuildContext context}) {
  return AppBar(
    toolbarHeight: MediaQuery.of(context).size.height / 5.6,
    brightness: Brightness.light,
    title: const Text(
      'Steps counter',
      style: TextStyle(
        color: AppColors.background,
      ),
    ),
    centerTitle: true,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: AppColors.scaffoldColor,
      ),
    ),
    elevation: 0,
    bottom: TabBar(
      isScrollable: true,
      indicator: CircleTabIndicator(color: AppColors.background, radius: 3),
      indicatorWeight: 15,
      overlayColor: MaterialStateProperty.all<Color?>(Colors.transparent),
      indicatorPadding: const EdgeInsets.only(
        bottom: 15,
      ),
      tabs: [
        Tab(
          child: InkWell(
            child: const Text('DAY'),
          ),
        ),
        Tab(
          child: InkWell(
            child: const Text('WEEK'),
          ),
        ),
        Tab(
          child: InkWell(
            child: const Text('MONTH'),
          ),
        ),
        Tab(
          child: InkWell(
            child: const Text('YEAR'),
          ),
        ),
      ],
    ),
  );
}
