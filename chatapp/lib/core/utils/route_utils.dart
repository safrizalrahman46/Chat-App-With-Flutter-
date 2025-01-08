import 'package:chatapp/core/constants/string.dart';
import 'package:chatapp/ui/screens/home/home_screen.dart';
import 'package:chatapp/ui/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class RouteUtils {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      default:
        MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Text("No Route Foounds!!"),
          ),
        );
    }
  }
}
