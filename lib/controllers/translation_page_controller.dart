import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:translation_app/controllers/home_page_controller.dart';

import '../services/translate_text_service.dart';
import '../utils/network_request_limiter.dart';

class TranslationPageController extends GetxController {
  late final TextEditingController textController;
  HomePageController homePageController = Get.find<HomePageController>();
  late RxString text;
  late RxnString translatedText;

  final FocusNode textFieldFocus = FocusNode();

  late final NetworkRequestLimiter translateRequestWithLimiter;

  @override
  void onInit() {
    textController = Get.arguments;
    text = homePageController.text;
    translatedText = homePageController.translatedText;

    translateRequestWithLimiter = NetworkRequestLimiter(
      translate,
      minDurationBetweenCalls: const Duration(milliseconds: 300),
    );

    translateOnTextChanges();

    super.onInit();
  }

  void translateOnTextChanges() {
    textController.addListener(() {
      if (text.value.isNotEmpty) {
        translateRequestWithLimiter.callFunction();
      }
    });
  }

  @override
  void onReady() {
    textFieldFocus.requestFocus();
    super.onReady();
  }

  void onClosePressed() {
    if (text.isNotEmpty) {
      textController.clear();
      translatedText.value = '';
    } else {
      Get.back();
    }
  }

  Future<void> translate() async {
    translatedText.value = await translateTextService(
      textToTranslate: text.value,
      fromLanguageCode: homePageController.sourceLanguage.value.code,
      toLanguageCode: homePageController.destinationLanguage.value.code,
    );
  }

  void onBackIconPressed() {
    Get.back();
  }
}
