import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:healthycare/core/controllers/stepsCounter_view_model.dart';
import 'package:healthycare/core/helpers/format_date.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '/core/constants/colors.dart';

// ignore: must_be_immutable
class ResultStepsCunter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<StepCounter>(
        init: StepCounter(),
        builder: (value) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: AppColors.lightGrey,
                              child: Icon(
                                Icons.arrow_left,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              '${CustomFormatDate.formatDateMonth.substring(0, 3)} ${CustomFormatDate.formatDateDay}, ${CustomFormatDate.formatDateYear}',
                              style: TextStyle(
                                color: AppColors.lightblack,
                                fontSize: 19,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              backgroundColor: AppColors.lightGrey,
                              child: Icon(
                                Icons.arrow_right,
                                color: AppColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CircularPercentIndicator(
              radius: 210.0,
              lineWidth: 9.0,
              animation: true,
              percent: 0.7,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Steps",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: AppColors.grey,
                    ),
                  ),
                  Text(
                    "${value.steps}",
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                    ),
                  ),
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: AppColors.primary,
              // backgroundColor: Color(0xFFCFD9EB),
              // linearGradient: AppColors.scaffoldColor,
              // startAngle: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        child: const Text(
                          'km',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        // child: FittedBox(
                        child: AutoSizeText(
                          '${value.km}',
                          textAlign: TextAlign.center,
                          presetFontSizes: [28, 20, 16],
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: AppColors.lightGrey,
                    height: 30,
                    width: 1,
                  ),
                  Column(
                    children: [
                      Container(
                        child: const Text(
                          'cal',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        // child: FittedBox(
                        child: AutoSizeText(
                          '${value.calories}',
                          textAlign: TextAlign.center,
                          presetFontSizes: [28, 20, 16],
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      // ),
                    ],
                  ),
                  Container(
                    color: AppColors.lightGrey,
                    height: 30,
                    width: 1,
                  ),
                  Column(
                    children: [
                      Container(
                        child: const Text(
                          'hours',
                          style: TextStyle(
                            color: AppColors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        // child: FittedBox(
                        child: AutoSizeText(
                          '0',
                          textAlign: TextAlign.center,
                          presetFontSizes: [28, 20, 16],
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
