// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_app/theme/my_styles.dart';

class MyTheme {
  static getThemeData({required bool isLight}) {
    return ThemeData(
      // useMaterial3: true,
      textTheme: MyStyles.getTextTheme(isLightTheme: !Get.isDarkMode),
      highlightColor: Colors.transparent,
    );
  }
}
