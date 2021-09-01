import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthycare/core/routes/main_routes.dart';
import 'package:healthycare/core/theme/theme_data.dart';

import 'package:healthycare/ui/pages/root/root_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'healthy care',
      theme: themeData(),
      onGenerateRoute: MainRoutes.allRoutes,
      home: RootPage(),
    );
  }
}
