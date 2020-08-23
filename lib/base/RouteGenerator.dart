import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterawy/screens/Splash.dart';
import 'package:flutterawy/screens/details.dart';
import 'package:flutterawy/screens/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Details.routeName:
        return MaterialPageRoute(builder: (_) => Details());
      case HomeScreen.routeName:
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => HomeScreen(
                    data: args,
                  ));
        }
    }
  }
}
