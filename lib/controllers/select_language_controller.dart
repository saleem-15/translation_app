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
  HomePageController get homePageController => Get.find<HomePageController>();
  final bool isSourceLanguage;
  Language selectedLanguage;

  RxBool isSearchMode = false.obs;
  RxBool isLoading = false.obs;

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
    final isTwoLanguagesSimilar = checkIsSourceAndDestinationLanguageSimilar(language);

    if (isTwoLanguagesSimilar) {
      flipLanguages(language);
      Get.back();

      return;
    }

    if (isSourceLanguage) {
      homePageController.setSourceLanguage(language);
    } else {
      homePageController.setDestinationLanguage(language);
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

  bool checkIsSourceAndDestinationLanguageSimilar(Language language) {
    if (isSourceLanguage) {
      if (homePageController.destinationLanguage.value == language) {
        return true;
      }
    }

    if (!isSourceLanguage) {
      if (homePageController.sourceLanguage.value == language) {
        return true;
      }
    }
    throw 'some error';
  }

  void flipLanguages(Language language) {
    if (isSourceLanguage) {
      homePageController.setDestinationLanguage(homePageController.sourceLanguage.value);
      homePageController.setSourceLanguage(language);
    }
    if (!isSourceLanguage) {
      homePageController.setSourceLanguage(homePageController.destinationLanguage.value);
      homePageController.setDestinationLanguage(language);
    }
  }
}
