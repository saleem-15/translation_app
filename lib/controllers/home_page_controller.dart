import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_app/models/language.dart';
import 'package:translation_app/routes/app_pages.dart';

import '../services/translate_text_service.dart';

class HomePageController extends GetxController {
  final textController = TextEditingController();
  String get textToTranslate => textController.text.trim();

  String? translatedText;

  Rx<Language> translateFromLanguage = Language(name: 'Arabic', code: 'ar', nativeName: 'العربية').obs;

  Rx<Language> translateToLanguage = Language(name: 'Arabic', code: 'ar', nativeName: 'العربية').obs;

  void setSourceLanguage(Language language) {
    translateFromLanguage(language);
  }

  void setDestinationLanguage(Language language) {
    translateToLanguage(language);
  }

  Future<void> onTranslateButtonPressed() async {
    translatedText = await translateTextService(
      textToTranslate: textToTranslate,
      fromLanguageCode: translateFromLanguage.value.code,
      toLanguageCode: translateToLanguage.value.code,
    );
    update(['Traslation Text']);
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void onTranslationSourceLanguagePressed() {
    Get.toNamed(
      Routes.CHOOSE_SOURCE_LANGUAGE_PAGE,
      arguments: translateFromLanguage.value,
    );
  }

  void onTranslationDestinationLanguagePressed() {
    Get.toNamed(
      Routes.CHOOSE_DESTINATION_LANGUAGE_PAGE,
      arguments: translateToLanguage.value,
    );
  }
}
