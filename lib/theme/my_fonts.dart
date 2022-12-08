import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyFonts {
  // return the right font depending on app language
  static TextStyle get getAppFontType => const TextStyle();

  // headlines text font
  static TextStyle get headlineTextStyle => getAppFontType;

  // body text font
  static TextStyle get bodyTextStyle => getAppFontType;

  // button text font
  static TextStyle get buttonTextStyle => getAppFontType;

  // app bar text font
  static TextStyle get appBarTextStyle => getAppFontType;

  // chips text font
  static TextStyle get chipTextStyle => getAppFontType;

  // appbar font size
  static double get appBarTittleSize => 18.sp;

  // body font size
  static double get body1TextSize => 16.sp;
  static double get body2TextSize => 16.sp;

  static double get bodyLarge => 16.sp;
  static double get bodySmall => 10.sp;

  //button font size
  static double get buttonTextSize => 16.sp;
}
