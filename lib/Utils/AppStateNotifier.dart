import 'package:flutter/cupertino.dart';

class AppStateNotifier extends ChangeNotifier{
  bool isDarkModeOn = false;

  void updateTheme(bool isDarkModeOn){
    this.isDarkModeOn = isDarkModeOn;
    notifyListeners();
  }
}