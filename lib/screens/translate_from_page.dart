import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_app/models/language.dart';

import '../controllers/select_language_controller.dart';

class SelectLanguagePage extends GetView<SelectLanguageController> {
  const SelectLanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Column(
        children: [
          /// Detect language
          if (controller.isSourceLanguage)
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
              child: Row(
                children: [
                  Icon(
                    Icons.check_rounded,
                    color: Theme.of(context).primaryColor,
                    size: 24,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Text(
                      'DETECT LANGUAGE',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                ],
              ),
            ),

          if (controller.isSourceLanguage)
            const Divider(
              thickness: 1,
            ),

          /// All available languages
          Expanded(
            child: GetBuilder<SelectLanguageController>(
              id: 'languages list',
              builder: (_) {
                return ListView.builder(
                  itemCount: supportedLanguages.length,
                  itemBuilder: (context, index) {
                    final currentLanguage = supportedLanguages[index];
                    return Obx(
                      () => Visibility(
                        visible: controller.isVisible(currentLanguage),
                        child: ListTile(
                          onTap: () => controller.onLanguageTapped(currentLanguage),
                          leading: controller.selectedLanguage == currentLanguage
                              ? Icon(
                                  Icons.check,
                                  color: Theme.of(context).primaryColor,
                                  size: 24,
                                )
                              : const SizedBox.shrink(),
                          title: Text(currentLanguage.name),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Obx(
        () => controller.isSearchMode.value
            ? TextField(
                focusNode: controller.searchFocus,
                style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                controller: controller.searchTextController,
                cursorColor: Colors.white,
                decoration: InputDecoration.collapsed(
                    hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white54),
                    hintText: controller.isSourceLanguage ? 'Translate from...' : 'Translate to...'),
              )
            : Text(controller.isSourceLanguage ? 'Translate from' : 'Translate to'),
      ),
      actions: [
        Obx(
          () => controller.isSearchMode.value
              ? IconButton(
                  onPressed: controller.onCloseSearchPressed,
                  icon: const Icon(Icons.close),
                )
              : IconButton(
                  onPressed: controller.onSearchIconPressed,
                  icon: const Icon(Icons.search),
                ),
        )
      ],
      elevation: 2,
    );
  }
}
