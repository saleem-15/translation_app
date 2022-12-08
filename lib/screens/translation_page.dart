// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:translation_app/controllers/translation_page_controller.dart';

import '../utils/scroll_behaviour.dart';

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
              shape: const ContinuousRectangleBorder(),
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: Colors.white,
              elevation: 5,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    /// text field
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10.w, 5.sp, 10.w, 5.sp),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              focusNode: controller.textFieldFocus,
                              controller: controller.textController,
                              maxLines: 2,
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

                    const Divider(
                      thickness: 1,
                      height: 0,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50.sp,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ScrollConfiguration(
                              behavior: MyScrollBehavior(),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Center(
                                  child: Obx(
                                    () => Text(
                                      controller.translatedText.value!,
                                      maxLines: 1,
                                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                            color: Theme.of(context).primaryColor,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: controller.onBackIconPressed,
                              icon: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
