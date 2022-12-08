// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_app/theme/dark_theme_colors.dart';
import 'package:translation_app/theme/light_theme_colors.dart';
import 'package:translation_app/theme/my_styles.dart';

class MyTheme {
  static getThemeData({required bool isLight}) {
    return ThemeData(
      // useMaterial3: true,

      ///colors
      primaryColor: isLight ? LightThemeColors.primaryColor : DarkThemeColors.primaryColor,

      highlightColor: Colors.transparent,

      ///THEMES
      textTheme: MyStyles.getTextTheme(isLightTheme: !Get.isDarkMode),

      inputDecorationTheme: MyStyles.getInputDecorationTheme(isLightTheme: isLight)
    );
    
  }
}
