import 'package:flutter/material.dart';

import 'dark_theme_colors.dart';
import 'light_theme_colors.dart';
import 'my_fonts.dart';

class MyStyles {
  ///text theme
  static TextTheme getTextTheme({required bool isLightTheme}) => TextTheme(
        button: MyFonts.buttonTextStyle.copyWith(fontSize: MyFonts.buttonTextSize),
        //
        bodyText1: (MyFonts.bodyTextStyle).copyWith(
          fontWeight: FontWeight.bold,
          fontSize: MyFonts.body1TextSize,
          color: isLightTheme ? LightThemeColors.bodyTextColor : DarkThemeColors.bodyTextColor,
        ),
        //
        bodyText2: (MyFonts.bodyTextStyle).copyWith(
          fontSize: MyFonts.body2TextSize,
          color: isLightTheme ? LightThemeColors.bodyTextColor : DarkThemeColors.bodyTextColor,
        ),
      );

  //Text Field
  static getInputDecorationTheme({required bool isLightTheme}) =>  InputDecorationTheme(
   hintStyle: getTextTheme(isLightTheme: isLightTheme).bodyText1!.copyWith(
                  color: isLightTheme ? LightThemeColors.hintColor :DarkThemeColors.hintColor,
                ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        border: InputBorder.none,
      );
}
