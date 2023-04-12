import 'package:flutter/material.dart';
import 'package:newproject/Routes/MyRoutes.dart';
import 'package:newproject/views/Movies.dart';
import 'package:newproject/views/profileView.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyRoutes.initialRoute:
        return MaterialPageRoute(
          builder: (_) => const Movies(),
        );
      case MyRoutes.moviesPage:
        return MaterialPageRoute(
          builder: (_) => const Movies(),
        );
      case MyRoutes.profilePage:
        return MaterialPageRoute(
          builder: (_) => const Profile(),
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
