import 'package:flutter/material.dart';
import 'package:innestetic/screens/screens.dart';

class AppRoutes {

  static String initialRoute = "/";

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (BuildContext context) => ProximamenteScreen(),
    '/home': (BuildContext context) => HomeScreen(),
    '/proximamente': (BuildContext context) => ProximamenteScreen(),
  };
}
