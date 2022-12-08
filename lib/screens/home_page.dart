import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:translation_app/controllers/home_page_controller.dart';

import '../widgets/translation_card.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Translation App',
        ),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Translate FROM language
                  Expanded(
                    child: SizedBox.expand(
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        onTap: controller.onTranslationSourceLanguagePressed,
                        child: Align(
                          alignment: const Alignment(-.9, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Obx(
                                () => Text(
                                  controller.sourceLanguage.value.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: Theme.of(context).primaryColor),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// Translate TO language
                  Expanded(
                    child: SizedBox.expand(
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        onTap: controller.onTranslationDestinationLanguagePressed,
                        child: Align(
                          alignment: const Alignment(.9, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Obx(
                                () => Text(
                                  controller.destinationLanguage.value.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(color: Theme.of(context).primaryColor),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Theme.of(context).primaryColor,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              height: 0,
            ),

            /// Text to translate
            Hero(
              tag: 'text field',
              child: GestureDetector(
                onTap: controller.onTextFieldPressed,
                child: Card(
                  margin: EdgeInsets.zero,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 60.sp),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            readOnly: true,
                            controller: controller.textController,
                            style: Theme.of(context).textTheme.bodyText1,
                            decoration: const InputDecoration(
                              hintText: 'Enter Text',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          child: Obx(
                            () => controller.isTextFieldEmpty.value
                                ? const SizedBox.shrink()
                                : IconButton(
                                    onPressed: controller.onClosePressed,
                                    icon: const Icon(Icons.close),
                                  ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10.sp,
            ),

            /// translation
            Obx(
              () => controller.isTextFieldEmpty.value ? const SizedBox.shrink() : const TranslationCard(),
            ),
          ],
        ),
      ),
    );
  }
}
