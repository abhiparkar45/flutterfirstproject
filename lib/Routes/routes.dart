import 'package:flutter/material.dart';
import 'package:newproject/Routes/MyRoutes.dart';
import 'package:newproject/views/Splash.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRoutes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const Splash(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Page not found !"),
            ),
          ),
        );
    }
  }
}
