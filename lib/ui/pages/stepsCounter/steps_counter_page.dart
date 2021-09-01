import 'package:flutter/material.dart';

import 'package:healthycare/core/constants/colors.dart';
import 'widgets/app_bar.dart';
import 'widgets/result_steps_counter.dart';

class StepsCounterPage extends StatefulWidget {
  StepsCounterPage({Key? key}) : super(key: key);

  @override
  _StepsCounterPageState createState() => _StepsCounterPageState();
}

class _StepsCounterPageState extends State<StepsCounterPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: AppColors.primary,
          appBar: appBar(context: context),
          body: Container(
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
                bottomLeft: const Radius.circular(40.0),
                bottomRight: const Radius.circular(40.0),
              ),
            ),
            child: TabBarView(
              // physics:NeverScrollableScrollPhysics() ,
              children: [
                ResultStepsCunter(),
                ResultStepsCunter(),
                ResultStepsCunter(),
                ResultStepsCunter(),
              ],
            ),
          ),
        ),
      );
}
