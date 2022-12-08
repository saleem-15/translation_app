import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TranslationPageController extends GetxController {
  late final TextEditingController textController;
  String get text => textController.text.trim();

  final FocusNode textFieldFocus = FocusNode();

  @override
  void onInit() {
    textController = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    textFieldFocus.requestFocus();
    super.onReady();
  }

  void onClosePressed() {
    if (text.isNotEmpty) {
      textController.clear();
    } else {
      Get.back();
    }
  }
}
