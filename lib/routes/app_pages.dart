import 'package:get/get.dart';
import 'package:translation_app/controllers/home_page_controller.dart';
import 'package:translation_app/controllers/translation_page_controller.dart';
import 'package:translation_app/screens/home_page.dart';
import 'package:translation_app/screens/translation_page.dart';

import '../controllers/select_language_controller.dart';
import '../screens/translate_from_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: BindingsBuilder.put(() => HomePageController()),
    ),
    GetPage(
      name: Routes.TRANSLATION_PAGE,
      page: () => const TranslationPage(),
      binding: BindingsBuilder.put(() => TranslationPageController()),
    ),
    GetPage(
      name: Routes.CHOOSE_SOURCE_LANGUAGE_PAGE,
      page: () => const SelectLanguagePage(),
      transition: Transition.native,
      binding: BindingsBuilder.put(
        () => SelectLanguageController(
          isSourceLanguage: true,
          selectedLanguage: Get.arguments,
        ),
      ),
    ),
    GetPage(
      name: Routes.CHOOSE_DESTINATION_LANGUAGE_PAGE,
      page: () => const SelectLanguagePage(),
      binding: BindingsBuilder.put(
        () => SelectLanguageController(
          isSourceLanguage: false,
          selectedLanguage: Get.arguments,
        ),
      ),
    ),
  ];
}
