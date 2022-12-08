import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';

class TranslationCard extends GetView<HomePageController> {
  const TranslationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (controller.isLoading.value) {
          return const CircularProgressIndicator();
        }

        // if(controller.te)
        return Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.r),
          ),
          margin: EdgeInsets.symmetric(horizontal: 5.sp),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  controller.destinationLanguage.value.name,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.white,
                      ),
                ),
                if (controller.translatedText != null)
                  GetBuilder<HomePageController>(
                    id: 'Traslation Text',
                    builder: (_) {
                      return Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          controller.translatedText!,
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Colors.white),
                        ),
                      );
                    },
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FractionalTranslation(
                      translation: const Offset(0, .2),
                      child: IconButton(
                        onPressed: controller.onCopyButtonPressed,
                        icon: const Icon(
                          Icons.copy,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
