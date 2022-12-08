// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:translation_app/controllers/translation_page_controller.dart';

class TranslationPage extends GetView<TranslationPageController> {
  const TranslationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
/// this code ==> AnnotatedRegion<SystemUiOverlayStyle>( ....
/// is to change the status bar color

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).primaryColor,
      ),
      child: Scaffold(
        body: SafeArea(
          child: Hero(
            tag: 'text field',
            child: Card(
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.white,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        focusNode: controller.textFieldFocus,
                        controller: controller.textController,
                        style: Theme.of(context).textTheme.bodyText1,
                        decoration: const InputDecoration(
                          hintText: 'Enter Text',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: IconButton(
                        onPressed: controller.onClosePressed,
                        icon: const Icon(Icons.close),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
