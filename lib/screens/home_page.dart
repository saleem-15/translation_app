import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translation_app/controllers/home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Translation App',
        ),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
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
                          child: Obx(
                            () => Text(
                              controller.translateFromLanguage.value.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Theme.of(context).primaryColor),
                            ),
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
                          child: Obx(
                            () => Text(
                              controller.translateToLanguage.value.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // if (FFAppState().isFirstResponseArrived)
            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Text(
                  'translated Language: ',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),

            /// Text to translate
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: const Color(0xFFF5F5F5),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                child: TextFormField(
                  controller: controller.textController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Enter Text',
                    hintStyle: Theme.of(context).textTheme.bodyText2,
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedErrorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                  ),
                  maxLines: 5,
                  minLines: 1,
                ),
              ),
            ),

            /// translation
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Theme.of(context).primaryColor,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Translation ',
                    ),
                    if (controller.translatedText != null)
                      GetBuilder<HomePageController>(
                        id: 'Traslation Text',
                        builder: (_) {
                          return Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Text(controller.translatedText!),
                          );
                        },
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: ElevatedButton(
                onPressed: controller.onTranslateButtonPressed,
                child: const Text('Translate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
