import 'dart:async';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Utils{
  Utils._();
  static showLoading()async{
    await EasyLoading.show(
      maskType: EasyLoadingMaskType.black,
    );
  }
  static dismissLoading()async{
    await EasyLoading.dismiss();
  }
  static Timer scheduleTimeout([int milliseconds = 10000]) =>
      Timer(Duration(milliseconds: milliseconds), dismissLoading);
}