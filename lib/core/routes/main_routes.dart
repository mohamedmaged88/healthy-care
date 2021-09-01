import 'package:flutter/material.dart';
import 'package:healthycare/core/constants/name_routes.dart';
import 'package:healthycare/ui/pages/home/home_page.dart';
import 'package:healthycare/ui/pages/root/root_page.dart';
import 'package:healthycare/ui/pages/stepsCounter/steps_counter_page.dart';

class MainRoutes {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case rootPage:
        return MaterialPageRoute(builder: (_) => RootPage());

      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());

      case stepsCounterPage:
        return MaterialPageRoute(builder: (_) => StepsCounterPage());
    }
    return MaterialPageRoute(builder: (_) => CircularProgressIndicator());
  }
}
