import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healthycare/core/constants/colors.dart';
import 'package:healthycare/core/constants/icons.dart';
import 'package:healthycare/core/controllers/stepsCounter_view_model.dart';
import 'package:healthycare/ui/shared/headerBar/header_bar.dart';
import 'widgets/custom_list_view.dart';
import 'widgets/custom_row.dart';
import 'widgets/custom_text_rich.dart';
import 'widgets/today.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerBar(
        context: context,
        title: 'Healthy Care',
        titleColor: AppColors.primary,
        fontSize: 24,
      ),
      body: SingleChildScrollView(
        child: GetBuilder<StepCounter>(
          init: StepCounter(),
          builder: (value) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Today(),
                    Expanded(
                      child: CustomRow(),
                    ),
                  ],
                ),
              ),
              CustomListView(
                title: 'Status',
                subtitle: 'Status not available',
                iconPath: value.status == 'walking'
                    ? man_walkingIconSvg
                    : value.status == 'stopped'
                        ? man_stoppingIconSvg
                        : errorIconSvg,
                textRich: CustomTextRich(
                  resultText:
                      value.status == 'walking' || value.status == 'stopped'
                          ? value.status
                          : '!',
                  hText: '',
                  mText: '',
                  minuteText: '',
                ),
              ),
              CustomListView(
                title: 'Steps',
                subtitle: '',
                iconPath: stepIconSvg,
                textRich: CustomTextRich(
                  resultText: value.steps,
                  hText: '',
                  mText: '',
                  minuteText: '',
                ),
              ),
              CustomListView(
                title: 'Calories',
                subtitle: '',
                iconPath: fireIconSvg,
                textRich: CustomTextRich(
                  resultText: value.calories,
                  hText: '',
                  mText: '',
                  minuteText: '',
                ),
              ),
              CustomListView(
                title: 'Hours',
                subtitle: 'Today',
                iconPath: clockIconSvg,
                textRich: CustomTextRich(
                  resultText: '9',
                  hText: ' h   ',
                  minuteText: '44',
                  mText: ' m ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
