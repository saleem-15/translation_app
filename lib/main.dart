import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:translation_app/controllers/home_page_controller.dart';
import 'package:translation_app/screens/home_page.dart';

import 'routes/app_pages.dart';
import 'theme/my_theme.dart';

void main() {
  Get.put(HomePageController());
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Translation App',
        theme: MyTheme.getThemeData(isLight: true),
        getPages: AppPages.routes,
        home: const HomePage(),
      ),
    );
  }
}
