import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:translation_app/models/language.dart';
import 'package:translation_app/routes/app_pages.dart';

import '../services/translate_text_service.dart';

class HomePageController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isTextFieldEmpty = true.obs;
  final textController = TextEditingController();

  final GlobalKey scaffoldKey = GlobalKey();
  String get textToTranslate => textController.text.trim();

  String? translatedText;

  Rx<Language> sourceLanguage = Language(name: 'English', code: 'en', nativeName: 'English').obs;

  Rx<Language> destinationLanguage = Language(name: 'Arabic', code: 'ar', nativeName: 'العربية').obs;

  @override
  void onInit() {
    listenToTextFieldChanges();
    super.onInit();
  }

  void setSourceLanguage(Language language) {
    sourceLanguage(language);
  }

  void setDestinationLanguage(Language language) {
    destinationLanguage(language);
  }

  Future<void> onTranslateButtonPressed() async {
    isLoading(true);
    translatedText = await translateTextService(
      textToTranslate: textToTranslate,
      fromLanguageCode: sourceLanguage.value.code,
      toLanguageCode: destinationLanguage.value.code,
    );
    isLoading(false);
    update(['Traslation Text']);
  }

  void onTranslationSourceLanguagePressed() {
    Get.toNamed(
      Routes.CHOOSE_SOURCE_LANGUAGE_PAGE,
      arguments: sourceLanguage.value,
    );
  }

  void onTranslationDestinationLanguagePressed() {
    Get.toNamed(
      Routes.CHOOSE_DESTINATION_LANGUAGE_PAGE,
      arguments: destinationLanguage.value,
    );
  }

  void onCopyButtonPressed() {
    Clipboard.setData(ClipboardData(text: translatedText));

    showTranslationCopiedMessage();
  }

  void showTranslationCopiedMessage() {
    Fluttertoast.showToast(
      msg: "Translation Copied",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  void onTextFieldPressed() {
    Get.toNamed(
      Routes.TRANSLATION_PAGE,
      arguments: textController,
    );
  }

  void onClosePressed() {
    textController.clear();
  }

  void listenToTextFieldChanges() {
    textController.addListener(() {
      if (textController.text.isBlank!) {
        isTextFieldEmpty(true);
      } else {
        isTextFieldEmpty(false);
      }
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
