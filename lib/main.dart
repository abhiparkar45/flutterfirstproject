import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:newproject/Routes/MyRoutes.dart';
import 'package:newproject/Routes/routes.dart';
import 'package:newproject/Utils/AppStateNotifier.dart';
import 'package:newproject/Utils/AppTheme.dart';
import 'package:provider/provider.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (BuildContext context) => AppStateNotifier(),
      child: MyApp(),
    ),
  );
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    // ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.threeBounce
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true
    ..maskType = EasyLoadingMaskType.none
  ..loadingStyle = EasyLoadingStyle.light;
  // ..customAnimation = CustomAnimation();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, AppState, child) {
        return MaterialApp(
          title: "Title Goes Here",
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          initialRoute: MyRoutes.initialRoute,
          onGenerateRoute: Routes.generateRoute,
          debugShowCheckedModeBanner: false,
          themeMode: AppState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}