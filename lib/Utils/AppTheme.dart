import 'package:flutter/material.dart';
import 'package:newproject/Utils/Colors.dart';
import 'package:newproject/Utils/CustomThemeExtensions.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: GetColor.primary,
      iconTheme: IconThemeData(
        color: GetColor.primaryIconColor,
      ),
    ),
    primaryColor: GetColor.primary,
    scaffoldBackgroundColor: GetColor.lightBackgroundColor,
    textTheme: TextTheme(
      bodyText2: TextStyle(color: GetColor.primaryTextColor, fontSize: 18),
    ),
    drawerTheme:
        DrawerThemeData(backgroundColor: GetColor.lightBackgroundColor),
    extensions: const <ThemeExtension<dynamic>>[
      CustomThemeExtentions(
        UsernameStyle: TextStyle(
            color: Colors.amber
        ),
      ),
    ],
  );

  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: GetColor.primary,
      iconTheme: IconThemeData(
        color: GetColor.primaryIconColor,
      ),
    ),
    primaryColor: GetColor.primary,
    scaffoldBackgroundColor: GetColor.darkBackgroundColor,
    textTheme: TextTheme(
      headline5: TextStyle(color: GetColor.primaryTextColor),
      // bodyText1: TextStyle(color: GetColor.primaryTextColor, fontSize: 20),
      bodyText2: TextStyle(
          color: GetColor.primaryTextColor,
          fontSize: 18,
          fontWeight: FontWeight.w400),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: GetColor.darkBackgroundColor),
    extensions: const <ThemeExtension<dynamic>>[
      CustomThemeExtentions(
        UsernameStyle: TextStyle(color: Colors.amber),
      ),
    ],
  );
}
