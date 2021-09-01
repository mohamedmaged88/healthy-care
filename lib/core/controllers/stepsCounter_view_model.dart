import 'dart:math';

import 'package:get/get.dart';
import 'package:pedometer/pedometer.dart';

class StepCounter extends GetxController {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;
  String status = '', steps = '0';
  late double numx;
  late double convert;
  late num kmx;
  late double burned;
  String km = "0";
  String calories = "0";

  @override
  void onInit() {
    super.onInit();
    initPlatformState();
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    _pedestrianStatusStream
        .listen(onPedestrianStatusChanged)
        .onError(onPedestrianStatusError);
  }

  void onStepCount(StepCount event) {
    print(event.steps);

    steps = event.steps.toString();

    double y = (event.steps + .0);
    numx = y;

    num long3 = (numx);
    long3 = num.parse(y.toStringAsFixed(2));
    var long4 = (long3 / 10000);

    int decimals = 1;
    num fac = pow(10, decimals);
    double d = long4;
    d = (d * fac).round() / fac;
    print("d: $d");

    getDistanceRun(numx);
    getBurnedRun();
    convert = d;
    print(convert);
    update();
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    steps = 'Step Count not available';
    update();
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
    status = event.status;
  }

  void onPedestrianStatusError(error) {
    print('onPedestrianStatusError: $error');
    status = 'Pedestrian Status not available';
    print(status);
    update();
  }

  // to determine the distance run in kilometers using number of steps
  void getDistanceRun(double _num) {
    num distance = ((_num * 78) / 100000);
    distance = num.parse(distance.toStringAsFixed(2));
    var distancekmx = distance * 34;
    distancekmx = num.parse(distancekmx.toStringAsFixed(2));
    //print(distance.runtimeType);
    km = "$distance";
    //print(_km);
    kmx = num.parse(distancekmx.toStringAsFixed(2));
    update();
  }

  // to determine the calories burned in kilometers using number of steps
  void getBurnedRun() {
    var _calories = kmx;
    calories = "$_calories";
    print(calories);
    update();
  }
}
