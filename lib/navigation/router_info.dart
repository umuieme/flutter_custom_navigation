import 'package:flutter/material.dart';
import 'package:flutter_navigation/dashboard/dashboard_tab.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/screen/first_screen.dart';
import 'package:flutter_navigation/screen/second_screen.dart';

class RouterInfo {
  static const String home = 'home';
  static const String dashboard = 'dashboard';

  static const String firstScreen = 'first';
  static const String secondScreen = 'second';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardTab());
      case firstScreen:
        final title = settings.arguments != null && settings.arguments is String
            ? settings.arguments as String
            : "";
        return MaterialPageRoute(builder: (_) => FirstScreen(title: title));
      case secondScreen:
        final title = settings.arguments != null && settings.arguments is String
            ? settings.arguments as String
            : "";
        return MaterialPageRoute(builder: (_) => SecondScreen(title: title));
      default:
        return MaterialPageRoute(builder: (_) => const Text("No page found"));
    }
  }
}
