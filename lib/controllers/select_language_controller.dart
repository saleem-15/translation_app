// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:translation_app/controllers/home_page_controller.dart';
import 'package:translation_app/models/language.dart';

class SelectLanguageController extends GetxController {
  SelectLanguageController({
    required this.isSourceLanguage,
    required this.selectedLanguage,
  });
  final bool isSourceLanguage;
  RxBool isSearchMode = false.obs;

  Language selectedLanguage;

  /// search field
  final FocusNode searchFocus = FocusNode();
  final searchTextController = TextEditingController();
  String get searchText => searchTextController.text.trim();

  ///

  @override
  void onInit() {
    /// when the search text changes the listView updates
    searchTextController.addListener(() => update(['languages list']));
    super.onInit();
  }

  void onLanguageTapped(Language language) {
    if (isSourceLanguage) {
      Get.find<HomePageController>().setSourceLanguage(language);
    } else {
      Get.find<HomePageController>().setDestinationLanguage(language);
    }

    Get.back();
  }

  void onSearchIconPressed() {
    isSearchMode(true);
    searchFocus.requestFocus();
  }

  void onCloseSearchPressed() {
    isSearchMode(false);
    searchTextController.clear();
  }

  bool isVisible(Language language) {
    if (!isSearchMode.value || searchText.isEmpty) {
      return true;
    }
    final name = language.name.toLowerCase();
    return name.startsWith(searchText.toLowerCase());
  }
}
